targetScope = 'subscription'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'hol'
  location: deployment().location
}

module helloAppServicePlan 'modules/app-service-plan.bicep' = {
  scope: resourceGroup
  name: 'deploy-app-service-plan'
  params: {
    name: 'app-service-plan'
  }
}

module helloAppService 'modules/app-service.bicep' = {
  scope: resourceGroup
  name: 'deploy-app-service'
  params: {
    appServicePlanId: helloAppServicePlan.outputs.appServicePlanId  // This is new from all other labs
    name: 'hello${uniqueString(resourceGroup.id)}'
  }
}
