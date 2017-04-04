---
title: Recording
---
## PureCloud::Recording

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The globally unique identifier for the object. | [optional] |
| **name** | **String** |  | [optional] |
| **conversation_id** | **String** |  | [optional] |
| **path** | **String** |  | [optional] |
| **start_time** | **String** |  | [optional] |
| **end_time** | **String** |  | [optional] |
| **media** | **String** | The type of media that the recording is. At the moment that could be audio, chat, or email. | [optional] |
| **annotations** | [**Array&lt;Annotation&gt;**](Annotation.html) | Annotations that belong to the recording. | [optional] |
| **transcript** | [**Array&lt;ChatMessage&gt;**](ChatMessage.html) | Represents a chat transcript | [optional] |
| **email_transcript** | [**Array&lt;RecordingEmailMessage&gt;**](RecordingEmailMessage.html) | Represents an email transcript | [optional] |
| **file_state** | **String** | Represents the current file state for a recording. Examples: Uploading, Archived, etc | [optional] |
| **restore_expiration_time** | **DateTime** | The amount of time a restored recording will remain restored before being archived again. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **media_uris** | [**Hash&lt;String, MediaResult&gt;**](MediaResult.html) | The different mediaUris for the recording. | [optional] |
| **estimated_transcode_time_ms** | **Integer** |  | [optional] |
| **actual_transcode_time_ms** | **Integer** |  | [optional] |
| **archive_date** | **DateTime** | The date the recording will be archived. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **archive_medium** | **String** | The type of archive medium used. Example: CloudArchive | [optional] |
| **delete_date** | **DateTime** | The date the recording will be deleted. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **max_allowed_restorations_for_org** | **Integer** | How many archive restorations the organization is allowed to have. | [optional] |
| **remaining_restorations_allowed_for_org** | **Integer** | The remaining archive restorations the organization has. | [optional] |
| **session_id** | **String** | The session id represents an external resource id, such as email, call, chat, etc | [optional] |
| **self_uri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}


