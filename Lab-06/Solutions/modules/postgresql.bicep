param name string

@secure()
param username string

@secure()
param password string

param databaseName string

resource postgresqlserver 'Microsoft.DBforPostgreSQL/servers@2017-12-01' = {
  location: resourceGroup().location
  name: name
  sku: {
    name: 'GP_Gen5_4'
    tier: 'GeneralPurpose'
    capacity: 4
    size: '102400'
    family: 'Gen5'
  }
  properties: {
    version: '11'
    createMode: 'Default'

    administratorLogin: username
    administratorLoginPassword: password
  }

  resource database 'databases@2017-12-01' = {
    name: databaseName
    properties: {
      charset: 'utf8'
      collation: 'English_United States.1252'
    }
  }

  resource firewall 'firewallRules@2017-12-01' = {
    name: 'AllowAllWindowsAzureIps'
    properties: {
      startIpAddress: '0.0.0.0'
      endIpAddress: '0.0.0.0'
    }
  }
}

output dbName string = postgresqlserver.name
