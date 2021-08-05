@minValue(1)
param numberOfStorageAccounts int = 5
param storageAccountNamePrefix string = 'storage'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = [for i in range(0, numberOfStorageAccounts): {
  name: '${storageAccountNamePrefix}${uniqueString(resourceGroup().id)}${i + 1}'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}]
