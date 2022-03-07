@minValue(1)
param numberOfStorageAccounts int = 5
param storageAccountNamePrefix string = 'storage'
param location string = resourceGroup().location

module applicationStorageAccounts 'Exercise3/modules/storageAccount.bicep' = [for i in range(0, numberOfStorageAccounts): {
  name: 'create-storage-account-${i}'
  scope: resourceGroup()
  params: {
    storageAccountName: '${storageAccountNamePrefix}${uniqueString(resourceGroup().id)}${i + 1}'
    location: location
  }
}]
