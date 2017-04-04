---
title: DomainCertificateAuthority
---
## PureCloud::DomainCertificateAuthority

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The globally unique identifier for the object. | [optional] |
| **name** | **String** | The name of the entity. | |
| **description** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **date_created** | **DateTime** | Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **date_modified** | **DateTime** | Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **modified_by** | **String** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **modified_by_app** | **String** |  | [optional] |
| **created_by_app** | **String** |  | [optional] |
| **certificate** | **String** | The authorities signed X509 PEM encoded certificate. | |
| **type** | **String** | The certificate authorities type.  Managed certificate authorities are generated and maintained by Interactive Intelligence.  These are read-only and not modifiable by clients.  Remote authorities are customer managed. | |
| **services** | **Array&lt;String&gt;** | The service(s) that the authority can be used to authenticate. | |
| **certificate_details** | [**Array&lt;CertificateDetails&gt;**](CertificateDetails.html) | The details of the parsed certificate(s). | [optional] |
| **self_uri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}


