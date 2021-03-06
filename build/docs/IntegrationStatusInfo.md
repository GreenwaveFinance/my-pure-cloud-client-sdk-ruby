---
title: IntegrationStatusInfo
---
## PureCloud::IntegrationStatusInfo

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **code** | **String** | Machine-readable status as reported by the integration. | [optional] |
| **effective** | **String** | Localized, human-readable, effective status of the integration. | [optional] |
| **detail** | [**MessageInfo**](MessageInfo.html) | Localizable status details for the integration. | [optional] |
| **last_updated** | **DateTime** | Date and time (in UTC) when the integration status (i.e. the code field) was last updated. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
{: class="table table-striped"}


