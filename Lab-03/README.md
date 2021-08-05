# Hands On Lab #3:  Resource Deployment & Modules

## Success Criteria

1. Create Bicep templates to deploy Azure Resources (i.e. storage account)
2. Create Bicep templates that are reusable & composable to create complex scenarios


## Exercise #1

Create a Bicep template that creates a storage account in your subscription.

[Bonus] What are some helpful settings that can be enabled on the storage account?  Try enabling them through Bicep.

## Exercise #2

Create 5 storage accounts, all with the same storage account name prefix and an ordinal representing the storage account number.  For example: 'storageaccount1', 'storageaccount2', etc.  Ensure:

1. Storage Account Name is customizable
2. Number of Storage Accounts is customizable

Ensure you can answer:

1. What happens when the deployment is run multiple times with the name storage account names?
2. Every storage account is given a fully-qualified domain name that must be globally unique, i.e. `mystorageaccount.blob.core.windows.net`.  Therefore, how can the storage account names be made unique at deployment time?


## Exercise #3

Create the storage account as a Bicep `module` so that it can be reused in different scenarios.

Ensure you can answer:

1. What is the difference between a Bicep template and a Bicep `module`?
2. How do you invoke a Bicep module?