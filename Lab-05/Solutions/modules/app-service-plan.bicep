param name string

resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: name
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

output appServicePlanId string = appServicePlan.id
