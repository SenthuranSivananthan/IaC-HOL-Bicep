# Hands On Lab #5:  Deployment Scopes

A deployment in ARM has an associated scope, which dictates the scope that resources within that deployment are created in. There are various ways to deploy resources across multiple scopes today in ARM templates; this spec describes how similar functionality can be achieved in Bicep.

Unless otherwise specified, Bicep will assume that a given .bicep file is to be deployed at a resource group scope, and will validate resources accordingly. If you wish to change this scope, or define a file that can be deployed at multiple scopes, you must use the targetScope keyword with either a string or array value as follows:

It is important to set the target scope because it allows Bicep to perform validation that the resources declared in the .bicep file are permitted at that scope, and it also ensures that the correct type of scope is passed to the module when the module is referenced.

## Documentation

* [Bicep - Resource Scopes](https://docs.microsoft.com/azure/azure-resource-manager/bicep/bicep-functions-scope)

## Success Criteria

1. Create a bicep template that will be deployed at the subscription.  The template will create:

    * Resource Group
    * Azure App Service (from [Lab 04](../Lab-04))


## Exercise #1

In this exercise, you will reuse the Azure App Service template that was created in [Lab 04](../Lab-04).

In Lab 04, a resource group was created through Azure CLI and provided as an input (`--resource-group` parameter) during deployment.  In this exercise, the resource group will need to be created by Bicep, then the resources deployed in it.

Hint:  Use `az deployment -h` to understand the options for deploying at different scopes.

Ensure you can answer:

1. How do you monitor the deployments at subscription scope?
2. What resources can be deployed at the subscription scope?
3. How can you transfer key parameters between modules so that dependent configuration can be inferred and used?
