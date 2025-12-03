[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Work In Progress](https://img.shields.io/badge/Status-Work%20In%20Progress-yellow)](https://guide.unitvectorylabs.com/bestpractices/status/#work-in-progress)

# lockboxkms-secretmanager-tofu

OpenTofu module for decrypting value using KMS and creating a secret with that value in GCP

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_secret_manager_secret.secret](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret) | resource |
| [google_secret_manager_secret_version.secret_version](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |
| [google_kms_crypto_key.my_crypto_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_crypto_key) | data source |
| [google_kms_key_ring.my_key_ring](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_key_ring) | data source |
| [google_kms_secret.decrypted_value](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deletion_policy"></a> [deletion\_policy](#input\_deletion\_policy) | The deletion policy for the secret version. Setting ABANDON allows the resource to be abandoned rather than deleted. Setting DISABLE allows the resource to be disabled rather than deleted. Default is DELETE. Possible values are: DELETE, DISABLE, ABANDON. | `string` | `"DELETE"` | no |
| <a name="input_encrypted_value"></a> [encrypted\_value](#input\_encrypted\_value) | The symmetrically encrypted value to store in Secret Manager. | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name of the key to create. | `string` | n/a | yes |
| <a name="input_key_ring_location"></a> [key\_ring\_location](#input\_key\_ring\_location) | The location of the key ring to create. | `string` | n/a | yes |
| <a name="input_key_ring_name"></a> [key\_ring\_name](#input\_key\_ring\_name) | The name of the key ring to create. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP project ID where the secret will be stored. | `string` | n/a | yes |
| <a name="input_secret_id"></a> [secret\_id](#input\_secret\_id) | The id of the secret in Secret Manager to store the secret. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_create_time"></a> [secret\_create\_time](#output\_secret\_create\_time) | The time at which the Secret was created. |
| <a name="output_secret_id"></a> [secret\_id](#output\_secret\_id) | The identifier for the Secret resource. |
| <a name="output_secret_name"></a> [secret\_name](#output\_secret\_name) | The resource name of the Secret. |
| <a name="output_secret_version"></a> [secret\_version](#output\_secret\_version) | The version of the Secret. |
| <a name="output_secret_version_create_time"></a> [secret\_version\_create\_time](#output\_secret\_version\_create\_time) | The time at which the SecretVersion was created. |
| <a name="output_secret_version_id"></a> [secret\_version\_id](#output\_secret\_version\_id) | The identifier for the SecretVersion resource. |
| <a name="output_secret_version_name"></a> [secret\_version\_name](#output\_secret\_version\_name) | The resource name of the SecretVersion. |
<!-- END_TF_DOCS -->
