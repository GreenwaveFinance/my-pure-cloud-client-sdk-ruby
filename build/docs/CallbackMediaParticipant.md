---
title: CallbackMediaParticipant
---
## PureCloud::CallbackMediaParticipant

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The unique participant ID. | [optional] |
| **name** | **String** | The display friendly name of the participant. | [optional] |
| **address** | **String** | The participant address. | [optional] |
| **start_time** | **DateTime** | The time when this participant first joined the conversation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **connected_time** | **DateTime** | The time when this participant went connected for this media (eg: video connected time). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **end_time** | **DateTime** | The time when this participant went disconnected for this media (eg: video disconnected time). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **start_hold_time** | **DateTime** | The time when this participant&#39;s hold started. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **purpose** | **String** | The participant&#39;s purpose.  Values can be: &#39;agent&#39;, &#39;user&#39;, &#39;customer&#39;, &#39;external&#39;, &#39;acd&#39;, &#39;ivr | [optional] |
| **state** | **String** | The participant&#39;s state.  Values can be: &#39;alerting&#39;, &#39;connected&#39;, &#39;disconnected&#39;, &#39;dialing&#39;, &#39;contacting | [optional] |
| **direction** | **String** | The participant&#39;s direction.  Values can be: &#39;inbound&#39; or &#39;outbound&#39; | [optional] |
| **disconnect_type** | **String** | The reason the participant was disconnected from the conversation. | [optional] |
| **held** | **BOOLEAN** | Value is true when the participant is on hold. | [optional] |
| **wrapup_required** | **BOOLEAN** | Value is true when the participant requires wrap-up. | [optional] |
| **wrapup_prompt** | **String** | The wrap-up prompt indicating the type of wrap-up to be performed. | [optional] |
| **user** | [**UriReference**](UriReference.html) | The PureCloud user for this participant. | [optional] |
| **queue** | [**UriReference**](UriReference.html) | The PureCloud queue for this participant. | [optional] |
| **attributes** | **Hash&lt;String, String&gt;** | A list of ad-hoc attributes for the participant. | [optional] |
| **error_info** | [**ErrorBody**](ErrorBody.html) | If the conversation ends in error, contains additional error details. | [optional] |
| **script** | [**UriReference**](UriReference.html) | The Engage script that should be used by this participant. | [optional] |
| **wrapup_timeout_ms** | **Integer** | The amount of time the participant has to complete wrap-up. | [optional] |
| **wrapup_skipped** | **BOOLEAN** | Value is true when the participant has skipped wrap-up. | [optional] |
| **alerting_timeout_ms** | **Integer** | Specifies how long the agent has to answer an interaction before being marked as not responding. | [optional] |
| **provider** | **String** | The source provider for the communication. | [optional] |
| **external_contact** | [**UriReference**](UriReference.html) | If this participant represents an external contact, then this will be the reference for the external contact. | [optional] |
| **external_organization** | [**UriReference**](UriReference.html) | If this participant represents an external org, then this will be the reference for the external org. | [optional] |
| **wrapup** | [**Wrapup**](Wrapup.html) | Wrapup for this participant, if it has been applied. | [optional] |
| **peer** | **String** | The peer communication corresponding to a matching leg for this communication. | [optional] |
| **flagged_reason** | **String** | The reason specifying why participant flagged the conversation. | [optional] |
| **journey_context** | [**JourneyContext**](JourneyContext.html) | Journey System data/context that is applicable to this communication.  When used for historical purposes, the context should be immutable.  When null, there is no applicable Journey System context. | [optional] |
| **outbound_preview** | [**DialerPreview**](DialerPreview.html) | The outbound preview associated with this callback. | [optional] |
| **voicemail** | [**Voicemail**](Voicemail.html) | The voicemail associated with this callback. | [optional] |
| **callback_numbers** | **Array&lt;String&gt;** | The list of phone number to use for this callback. | [optional] |
| **callback_user_name** | **String** | The name of the callback target. | [optional] |
| **skip_enabled** | **BOOLEAN** | If true, the callback can be skipped | [optional] |
| **timeout_seconds** | **Integer** | Duration in seconds before the callback will be auto-dialed. | [optional] |
| **automated_callback_config_id** | **String** | The id of the config for automatically placing the callback (and handling the disposition). If absent, the callback will not be placed automatically but routed to an agent as per normal. | [optional] |
| **callback_scheduled_time** | **DateTime** | Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
{: class="table table-striped"}


