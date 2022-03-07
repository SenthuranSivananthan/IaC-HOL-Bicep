targetScope = 'subscription'

@secure()
param dbUsername string

@secure()
param dbPassword string

param location string = deployment().location

var appDatabaseName = 'pollsdb'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'hol'
  location: location
}

module pollsKeyVault 'modules/key-vault.bicep' = {
  scope: resourceGroup
  name: 'deploy-key-vault'
  params: {
    name: 'polls${uniqueString(resourceGroup.id)}'
    location: location
  }
}

module pollsPostgreSQL 'modules/postgresql.bicep' = {
  scope: resourceGroup
  name: 'deploy-postgresql-server'
  params: {
    name: 'polls${uniqueString(resourceGroup.id)}'
    location: location

    username: dbUsername
    password: dbPassword

    databaseName: appDatabaseName
  }
}

module pollsAppServicePlan 'modules/app-service-plan.bicep' = {
  scope: resourceGroup
  name: 'deploy-app-service-plan'
  params: {
    name: 'polls-service-plan'
    location: location
  }
}

module pollsAppService 'modules/app-service.bicep' = {
  scope: resourceGroup
  name: 'deploy-app-service'
  params: {
    location: location
    appServicePlanId: pollsAppServicePlan.outputs.appServicePlanId
    name: 'polls${uniqueString(resourceGroup.id)}'
    appSettings: [
      {
        name: 'DBHOST'
        value: pollsPostgreSQL.outputs.dbName
      }
      {
        name: 'DBUSER'
        value: '@Microsoft.KeyVault(SecretUri=${akvSecretPostgresqlUsername.outputs.secretUri})'
      }
      {
        name: 'DBPASS'
        value: '@Microsoft.KeyVault(SecretUri=${akvSecretPostgresqlPassword.outputs.secretUri})'
      }
      {
        name: 'DBNAME'
        value: appDatabaseName
      }
      {
        name: 'SCM_DO_BUILD_DURING_DEPLOYMENT'
        value: true
      }
    ]
  }
}

module assignAppServiceToKeyVaultToAccessSecrets 'modules/key-vault-rbac-read-secrets.bicep' = {
  scope: resourceGroup
  name: 'rbac-assign-appservice-to-akv-for-secrets'
  params: {
    keyVaultName: pollsKeyVault.outputs.name
    principalId: pollsAppService.outputs.appServiceManagedIdentity
  }
}

module akvSecretPostgresqlUsername 'modules/key-vault-secret.bicep' = {
  scope: resourceGroup
  name: 'save-postgresql-username'
  params: {
    akvName: pollsKeyVault.outputs.name
    secretExpiryInDays: 365
    secretName: 'dbUsername'
    secretValue: dbUsername
  }
}

module akvSecretPostgresqlPassword 'modules/key-vault-secret.bicep' = {
  scope: resourceGroup
  name: 'save-postgresql-password'
  params: {
    akvName: pollsKeyVault.outputs.name
    secretExpiryInDays: 365
    secretName: 'dbPassword'
    secretValue: dbPassword
  }
}
