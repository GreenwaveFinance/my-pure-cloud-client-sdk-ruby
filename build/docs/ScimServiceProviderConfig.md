---
title: ScimServiceProviderConfig
---
## PureCloud::ScimServiceProviderConfig

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **schemas** | **Array&lt;String&gt;** | schemas supported | [optional] |
| **documentation_uri** | **String** | Documentation | [optional] |
| **patch** | [**ScimServiceProviderConfigSimpleFeature**](ScimServiceProviderConfigSimpleFeature.html) | Patch support | [optional] |
| **filter** | [**ScimServiceProviderConfigFilterFeature**](ScimServiceProviderConfigFilterFeature.html) | Filter support. Additional properties: maxResults | [optional] |
| **etag** | [**ScimServiceProviderConfigSimpleFeature**](ScimServiceProviderConfigSimpleFeature.html) | Entity Tag support | [optional] |
| **sort** | [**ScimServiceProviderConfigSimpleFeature**](ScimServiceProviderConfigSimpleFeature.html) | Sort support | [optional] |
| **bulk** | [**ScimServiceProviderConfigBulkFeature**](ScimServiceProviderConfigBulkFeature.html) | Bulk support | [optional] |
| **change_password** | [**ScimServiceProviderConfigSimpleFeature**](ScimServiceProviderConfigSimpleFeature.html) | Change password | [optional] |
| **authentication_schemes** | [**Array&lt;ScimServiceProviderConfigAuthenticationScheme&gt;**](ScimServiceProviderConfigAuthenticationScheme.html) | Authentication schemes supported. | [optional] |
| **meta** | [**ScimMetadata**](ScimMetadata.html) | Resource SCIM meta | [optional] |
{: class="table table-striped"}

