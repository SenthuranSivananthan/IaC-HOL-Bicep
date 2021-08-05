param keyVaultName string
param principalId string

// Key Vault Secrets User - https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles#key-vault-secrets-user
var roleId = '4633458b-17de-408a-b874-0445c86b69e6'

resource scopeOfRoleAssignment 'Microsoft.KeyVault/vaults@2021-04-01-preview' existing = {
  name: keyVaultName
}

resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-08-01-preview' = {
  name: guid(scopeOfRoleAssignment.id, principalId, roleId)
  scope: scopeOfRoleAssignment
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', roleId)
    principalId: principalId
    principalType: 'ServicePrincipal'
  }
}
