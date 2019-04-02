---
title: WfmUserNotification
---
## PureCloud::WfmUserNotification

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The immutable globally unique identifier for the object. | |
| **mutable_group_id** | **String** | The group ID of the notification (mutable, may change  on update) | |
| **timestamp** | **DateTime** | The timestamp for this notification. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **type** | **String** | The type of this notification | [optional] |
| **shift_trade** | [**ShiftTradeNotification**](ShiftTradeNotification.html) | A shift trade notification.  Only set if type == ShiftTrade | [optional] |
| **marked_as_read** | **BOOLEAN** | Whether this notification has been marked \&quot;read\&quot; | |
| **agent_notification** | **BOOLEAN** | Whether this notification is for an agent | [optional] |
| **other_notification_ids_in_group** | **Array&lt;String&gt;** | Other notification IDs in group.  This field is only populated in real-time notifications | [optional] |
{: class="table table-striped"}


