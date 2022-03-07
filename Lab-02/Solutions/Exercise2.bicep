param utcTime string = utcNow('u')
param location string = resourceGroup().location

var localTimeInEDT = dateTimeAdd(utcTime, '-PT4H')

output tenantId string = subscription().tenantId
output subscriptionId string = subscription().subscriptionId
output resourceGroupName string = resourceGroup().name
output resourceGroupId string = resourceGroup().id
output resourceGroupLocation string = location
output localTime string = localTimeInEDT
