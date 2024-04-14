param name string
param location string
param locationName string
param defaultExperience string
param isZoneRedundant string
param pairedLocation string
param pairedLocationName string

resource name_resource 'Microsoft.DocumentDb/databaseAccounts@2024-02-15-preview' = {
  kind: 'MongoDB'
  name: name
  location: location
  properties: {
    databaseAccountOfferType: 'Standard'
    locations: [
      {
        id: '${name}-${location}'
        failoverPriority: 0
        locationName: locationName
      }
      {
        id: '${name}-${pairedLocation}'
        failoverPriority: 1
        locationName: pairedLocationName
      }
    ]
    backupPolicy: {
      type: 'Periodic'
      periodicModeProperties: {
        backupIntervalInMinutes: 240
        backupRetentionIntervalInHours: 8
        backupStorageRedundancy: 'Geo'
      }
    }
    isVirtualNetworkFilterEnabled: false
    virtualNetworkRules: []
    ipRules: []
    dependsOn: []
    minimalTlsVersion: 'Tls12'
    enableMultipleWriteLocations: false
    capabilities: [
      {
        name: 'EnableMongo'
      }
      {
        name: 'DisableRateLimitingResponses'
      }
    ]
    apiProperties: {
      serverVersion: '4.2'
    }
    enableFreeTier: true
    capacity: {
      totalThroughputLimit: 1000
    }
  }
  tags: {
    defaultExperience: defaultExperience
    'hidden-cosmos-mmspecial': ''
  }
}
