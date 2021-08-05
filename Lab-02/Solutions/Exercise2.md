## Deploy Bicep template

```bash
az group create --name hol --location eastus

az deployment group create --resource-group hol --template-file Lab-02/Solutions/Exercise2.bicep
```

## Check Azure Portal for inputs & outputs

1. Go to [Azure Portal](https://portal.azure.com)
2. Go to the resource group you created.  In this example, it is called "hol".
3. Click on "Deployments" on the Overview tab
4. Identify your deployment and check the inputs, outputs and ARM template.
