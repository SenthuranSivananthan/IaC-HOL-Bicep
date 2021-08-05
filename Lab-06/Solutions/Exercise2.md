## Deploy Bicep template

Follow the instruction for [Exercise #1](Exercise1.md) to deploy the Azure App Service.

## Deploy Python Application

1. Login to Azure Portal
2. Launch Azure Cloud Shell
3. Follow the [Quickstart example](https://docs.microsoft.com/en-us/azure/app-service/tutorial-python-postgresql-app?tabs=bash%2Cclone&pivots=postgres-single-server) to deploy the application.

```bash
git clone https://github.com/Azure-Samples/djangoapp
cd djangoapp

# Replace the Resource Group name and Azure App Service name
az webapp up --resource-group hol --name appservicexljtkifz7nljm

# Note:  You might need to browse the application to launch the underlying container before connecting over SSH
# Replace the Resource Group name and Azure App Service name
az webapp ssh --resource-group hol --name appservicexljtkifz7nljm

# Commands to run in SSH session
# Run database migrations
python manage.py migrate

# Create the super user (follow prompts)
# Username and Password are used to access the Admin portal for the Django application 
python manage.py createsuperuser
```
