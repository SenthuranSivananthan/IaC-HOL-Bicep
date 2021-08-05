## Deploy Bicep template

```bash
# Replace the subscription guid
az deployment sub create --subscription 12345678-cc75-42c1-a835-abcdefghijkl --location eastus --template-file Lab-06/Solutions/Exercise1.bicep
```

## Check Azure Portal for the deployed resources

1. Go to [Azure Portal](https://portal.azure.com)
2. Go to the resource group you created and validate whether web application is deployed.