param name string

resource akv 'Microsoft.KeyVault/vaults@2021-04-01-preview' = {
  name: name
  location: resourceGroup().location
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
