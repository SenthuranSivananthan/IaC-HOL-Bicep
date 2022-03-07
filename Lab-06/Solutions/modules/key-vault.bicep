param name string
param location string = resourceGroup().location

resource akv 'Microsoft.KeyVault/vaults@2021-04-01-preview' = {
  name: name
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: subscription().tenantId
    enableRbacAuthorization: true
  }
}

output name string = akv.name
