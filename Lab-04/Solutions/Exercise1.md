## Deploy Bicep template

```bash
az group create --name hol --location canadacentral

az deployment group create --resource-group hol --template-file Lab-04/Solutions/Exercise1.bicep
```

## Check Azure Portal for inputs & outputs

1. Go to [Azure Portal](https://portal.azure.com)
2. Go to the resource group you created and validate whether web application is deployed.