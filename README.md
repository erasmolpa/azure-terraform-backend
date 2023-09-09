## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_lock.rg_lock](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) | resource |
| [azurerm_resource_group.rg_tfstate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.sa_tfstate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.sc_tfstate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Azure Storage Account Replication Type (defaults to LRS) | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Azure Storage Account Tier (defaults to Standard) | `string` | `"Standard"` | no |
| <a name="input_create_lock"></a> [create\_lock](#input\_create\_lock) | Should an Azure Management Lock being created? | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"East US"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | `"tfstategroup"` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | n/a | `string` | `"tfstatesa"` | no |
| <a name="input_storage_container_access_type"></a> [storage\_container\_access\_type](#input\_storage\_container\_access\_type) | Blob Container Access Type (defaults to private) | `string` | `"private"` | no |
| <a name="input_storage_container_name"></a> [storage\_container\_name](#input\_storage\_container\_name) | n/a | `string` | `"tfstatesc"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of Azure tags, assoicated with all created resources | `map(string)` | <pre>{<br>  "environment": "test",<br>  "region": "test"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_blob_container_name"></a> [blob\_container\_name](#output\_blob\_container\_name) | Name of the Blob container |
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | Azure Storage Account - Primary access key |
| <a name="output_primary_blob_connection_string"></a> [primary\_blob\_connection\_string](#output\_primary\_blob\_connection\_string) | Azure Storage Account - Primary Blob service connection string |
| <a name="output_primary_connection_string"></a> [primary\_connection\_string](#output\_primary\_connection\_string) | Azure Storage Account - Primary connection string |
| <a name="output_secondary_access_key"></a> [secondary\_access\_key](#output\_secondary\_access\_key) | Azure Storage Account - Secondary access key |
| <a name="output_secondary_blob_connection_string"></a> [secondary\_blob\_connection\_string](#output\_secondary\_blob\_connection\_string) | Azure Storage Account - Secondary Blob service connection string |
| <a name="output_secondary_connection_string"></a> [secondary\_connection\_string](#output\_secondary\_connection\_string) | Azure Storage Account - Secondary connection string |
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | Name of the Azure Storage Account |
