---
title: DomainOrganizationRoleCreate
---
## PureCloud::DomainOrganizationRoleCreate

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The globally unique identifier for the object. | [optional] |
| **name** | **String** | The role name | |
| **description** | **String** |  | [optional] |
| **default_role_id** | **String** |  | [optional] |
| **permissions** | **Array&lt;String&gt;** |  | [optional] |
| **unused_permissions** | **Array&lt;String&gt;** |  | [optional] |
| **permission_policies** | [**Array&lt;DomainPermissionPolicy&gt;**](DomainPermissionPolicy.html) |  | [optional] |
| **user_count** | **Integer** |  | [optional] |
| **role_needs_update** | **BOOLEAN** | Optional unless patch operation. | [optional] |
| **default** | **BOOLEAN** |  | [optional] |
| **base** | **BOOLEAN** |  | [optional] |
| **self_uri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}


