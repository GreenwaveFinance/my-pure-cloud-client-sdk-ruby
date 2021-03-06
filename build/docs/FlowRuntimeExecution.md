---
title: FlowRuntimeExecution
---
## PureCloud::FlowRuntimeExecution

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The flow execution ID | [optional] |
| **name** | **String** | The flow execution name. | [optional] |
| **flow_version** | [**FlowVersion**](FlowVersion.html) | The Version of the flow definition of the flow execution. | |
| **date_launched** | **DateTime** | The time the flow was launched. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | |
| **status** | **String** | The flow&#39;s running status, which indicates whether the flow is running normally or completed, etc. | |
| **date_completed** | **DateTime** | The time the flow completed, if applicable. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **completion_reason** | **String** | The completion reason set at the flow completion time, if applicable. | [optional] |
| **flow_error_info** | [**ErrorBody**](ErrorBody.html) | Additional information if the flow is in error | [optional] |
| **output_data** | **Hash&lt;String, Object&gt;** | List of the flow&#39;s output variables, if any. Output variables are only supplied for Completed flows. | [optional] |
| **conversation** | [**DomainEntityRef**](DomainEntityRef.html) | The conversation to which this Flow execution is related | [optional] |
| **self_uri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}


