targetScope = 'subscription'

param location string = deployment().location

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'hol'
  location: location
}

module helloAppServicePlan 'modules/app-service-plan.bicep' = {
  scope: resourceGroup
  name: 'deploy-app-service-plan'
  params: {
    name: 'app-service-plan'
    location: location
  }
}

module helloAppService 'modules/app-service.bicep' = {
  scope: resourceGroup
  name: 'deploy-app-service'
  params: {
    appServicePlanId: helloAppServicePlan.outputs.appServicePlanId  // This is new from all other labs
    name: 'hello${uniqueString(resourceGroup.id)}'
    location: location
  }
}
