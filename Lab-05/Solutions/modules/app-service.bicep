param name string
param appServicePlanId string

resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: name
  location: resourceGroup().location
  kind: 'linux'
  properties: {
    httpsOnly: true
    serverFarmId: appServicePlanId
    clientAffinityEnabled: true
    siteConfig: {
      linuxFxVersion: 'PYTHON|3.7'
      use32BitWorkerProcess: false
      minTlsVersion: '1.2'
      scmMinTlsVersion: '1.2'
      appSettings: []
    }
  }
}
