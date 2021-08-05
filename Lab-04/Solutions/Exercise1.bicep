resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: 'app-service-plan'
  location: resourceGroup().location
  kind: 'Linux'
  sku: {
    name: 'S1'
    tier: 'Standard'
  }
  properties: {
    reserved: true
  }
}

resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: 'appservice${uniqueString(resourceGroup().id)}'
  location: resourceGroup().location
  kind: 'linux'
  properties: {
    httpsOnly: true
    serverFarmId: appServicePlan.id
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
