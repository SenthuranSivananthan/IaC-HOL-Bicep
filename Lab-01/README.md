# Hands On Lab #1:  Tooling

## Success Criteria

1. Installed Visual Studio Code + Bicep extension
2. Installed Azure CLI
3. Configured Azure Cloud Shell
4. Watched Brendan Burns' Ignite 2021 Presentation on Bicep


## Installation

1. Install [Visual Studio Code](https://code.visualstudio.com/Download)
2. Install [Bicep VS Code extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-bicep)
3. Install [Azure CLI](https://docs.microsoft.com/cli/azure/install-azure-cli)

## Setup Azure Cloud Shell

Azure Cloud Shell is an interactive, authenticated, browser-accessible shell for managing Azure resources. It provides the flexibility of choosing the shell experience that best suits the way you work, either Bash or PowerShell.

Follow instructions on [Azure Docs](https://docs.microsoft.com/azure/cloud-shell/overview) to access Cloud Shell directly or through Azure Portal.

## Setup Ubuntu on WSL (Windows Subsystem for Linux)

Follow instructions on [Azure Docs](https://docs.microsoft.com/en-us/windows/wsl/install-win10) to enable WSL on Windows 10.

When WSL is used, consider installing:

* Azure CLI on Ubuntu
* [Integrate Visual Studio Code with WSL](https://code.visualstudio.com/docs/remote/wsl)

## Introduction to Bicep

Bicep is a domain-specific language (DSL) that uses declarative syntax to deploy Azure resources. It provides concise syntax, reliable type safety, and support for code reuse. We believe Bicep offers the best authoring experience for your infrastructure-as-code solutions in Azure.

You can use Bicep instead of JSON to develop your Azure Resource Manager templates (ARM templates). The JSON syntax to create an ARM template can be verbose and require complicated expressions. Bicep syntax reduces that complexity and improves the development experience. Bicep is a transparent abstraction over ARM template JSON and doesn't lose any of the JSON template capabilities. During deployment, the Bicep CLI converts a Bicep file into ARM template JSON.

Bicep isn't intended as a general programming language to write applications. A Bicep file declares Azure resources and resource properties, without writing a sequence of programming commands to create resources.

* Watch [Brendan Burns' Ignite 2021 Presentation](https://www.youtube.com/embed/sc1kJfcRQgY) (30 minutes)
* Browse [Azure Docs](https://docs.microsoft.com/azure/azure-resource-manager/bicep/overview)
