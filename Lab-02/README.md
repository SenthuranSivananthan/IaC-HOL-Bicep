# Hands On Lab #1:  Bicep Fundamentals

## Success Criteria

1. Create Bicep templates that use parameters, variables & outputs
2. Create Bicep templates that leverage various ARM template functions for infrastructure automation
3. Configure Bicep Linter configuration

## Documentation

1. [Parameters in Bicep](https://docs.microsoft.com/azure/azure-resource-manager/bicep/parameters)
2. [Variables in Bicep](https://docs.microsoft.com/azure/azure-resource-manager/bicep/variables)
3. [Outputs in Bicep](https://docs.microsoft.com/azure/azure-resource-manager/bicep/outputs)
4. [ARM Functions](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/template-functions-date)

## Exercise #1

Create a `hello world` Bicep template.  The template will use Azure Resource Manager (ARM) to execute the deployment and print a "hello" message.

1. You will need to create a Bicep template
2. You will need to create a resource group in your subscription
3. You will need to execute a deployment command using Azure CLI.
4. You will need to identify through Azure Portal, the inputs, outputs and the ARM template.
5. (Bonus) Azure Resource Manager doesn't interpret Bicep templates natively.  It needs to be transpiled to ARM template first.  Transpile the Bicep template locally to inspect the generated the template.

## Exercise #2

Create a Bicep template to output metadata about your environment.  The metadata is accessed through various built-in ARM functions and often used when deploying Azure resources.

This template will use Azure Resource Manager (ARM) to query your Azure subscription and output the following information:

1. Azure AD Tenant Id
2. Subscriptoin Id
3. Resource Group Id
4. Resource Group Name
5. Resource Group Location
6. Date & Time of the deployment in your local time zone

## Exercise #3

The Bicep linter will inspect your code and catch a customizable set of authoring best practices. It will surface warnings, errors, or informational messages as you're typing in VS Code for immediate feedback. This means you don't have to build or deploy your code to find out that you've made a mistake. Some rules can also surface an automatic code fix through the VS Code light bulb.

The linter should make it easier to enforce team coding standards by providing guidance during the development inner loop, as well as the ability to break a build (if desired) during continuous integration (CI) for violations.

In this exercise:

1. Identify the checks that are performed by the linter & their severity
2. Customize the severity so that failed checks prevent an Azure deployment
3. Create invalid Bicep templates to verify linter features