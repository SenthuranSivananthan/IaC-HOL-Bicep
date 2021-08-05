param utcTime string = utcNow('u')

var localTimeInEDT = dateTimeAdd(utcTime, '-PT4H')

output tenantId string = subscription().tenantId
output subscriptionId string = subscription().subscriptionId
output resourceGroupName string = resourceGroup().name
output resourceGroupId string = resourceGroup().id
output resourceGroupLocation string = resourceGroup().location
output localTime string = localTimeInEDT
