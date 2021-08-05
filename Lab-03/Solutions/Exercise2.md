## Deploy Bicep template

```bash
az group create --name hol --location canadacentral

az deployment group create --resource-group hol --template-file Lab-03/Solutions/Exercise2.bicep
```

## Check Azure Portal for inputs & outputs

1. Go to [Azure Portal](https://portal.azure.com)
2. Go to the resource group you created and validate whether the storage accounts are created.