using './main.bicep'

param prefix = 'pvai'
param suffix = 'dev2'
//param userObjectId = '0c5267b2-01f3-4a59-970e-0d9218d5412e'
param userObjectId = '0ae1c4af-4dae-4e4a-b54e-26b76432a4df' // could also be an Entra ID Group
param keyVaultEnablePurgeProtection = false
param acrEnabled = true
param vmAdminUsername = 'azadmin'
//param vmAdminPasswordOrKey = getSecret('1a45a694-ae23-4650-9774-89a571c462f6', 'BaboKeyVaultResourceGroup', 'BaboKeyVault', 'vmAdminPasswordOrKey')
param vmAdminPasswordOrKey = 'HLSS3cr3tP@ssS3cr3t!'
param openAiDeployments = [
  {
    model: {
      name: 'text-embedding-ada-002'
      version: '2'
    }
    sku: {
      name: 'Standard'
      capacity: 10
    }
  }
  {
    model: {
      name: 'gpt-4o'
      version: '2024-05-13'
    }
    sku: {
      name: 'GlobalStandard'
      capacity: 10
    }
  }
]
param tags = {
  environment: 'development'
  iac: 'bicep'
}
