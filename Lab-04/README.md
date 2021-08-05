# Hands On Lab #4:  Dependencies

## Success Criteria

1. Create Bicep templates to deploy Azure Resources where one resource depends on another during deployment time.
2. Able to answer:

    * Are dependencies implict or explict or both?
    * How does Azure Resource Manager handle dependencies?
    * What is the deployment order that Azure Resource Manager uses?
    * How does Bicep simply declaring dependencies?


## Exercise #1

In this exercise, you will be creating an Azure App Service with Python 3.7.

Azure App Service enables you to build and host web apps, mobile back ends, and RESTful APIs in the programming language of your choice without managing infrastructure. It offers auto-scaling and high availability, supports both Windows and Linux, and enables automated deployments from GitHub, Azure DevOps, or any Git repo. Learn how to use Azure App Service with our quickstarts, tutorials, and samples.

Hint:  You can create an Azure App Service through Azure Portal to understand the resources prior to creating the automation script.

## Exercise #2

Deploy the sample 'hello world' Python application and validate the application is accessible on the browser.

Hint:  Consider using [Quickstarts](https://docs.microsoft.com/en-us/azure/app-service/quickstart-python?tabs=bash&pivots=python-framework-flask) to bootstrap your application.