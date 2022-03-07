param name string
param appServicePlanId string

param appSettings array

param location string = resourceGroup().location

resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: name
  location: location
  kind: 'linux'
  identity: {
    type: 'SystemAssigned' // this is new from other labs
  }
  properties: {
    httpsOnly: true
    serverFarmId: appServicePlanId
    clientAffinityEnabled: true
    siteConfig: {
      linuxFxVersion: 'PYTHON|3.7'
      use32BitWorkerProcess: false
      minTlsVersion: '1.2'
      scmMinTlsVersion: '1.2'
      appSettings: appSettings
    }
  }
}

output appServiceManagedIdentity string = appService.identity.principalId
