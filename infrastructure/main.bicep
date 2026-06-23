param location string = resourceGroup().location
param vaultName string

module keyVault 'br/public:avm/res/key-vault/vault:0.13.3' = {
  name: 'keyVault'
  params: {
    location: location
    name: vaultName
    enableRbacAuthorization: true
    enableSoftDelete: false
    enableTelemetry: false
    sku: 'standard'
    publicNetworkAccess: 'Disabled'
  }
}
