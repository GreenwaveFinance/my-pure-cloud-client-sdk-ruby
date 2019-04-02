---
title: Event
---
## PureCloud::Event

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | System-generated UUID for the event. | [optional] |
| **correlation_id** | **String** | UUID corresponding to triggering action that caused this event (e.g. HTTP POST, SIP invite, another event). | [optional] |
| **customer_id** | **String** | Primary identifier of the customer in the source of the events. | |
| **customer_id_type** | **String** | Type of primary identifier (e.g. cookie, email, phone, salesforce). | |
| **session** | [**Session**](Session.html) | The session that the event belongs to. | [optional] |
| **event_type** | **String** | The name representing the type of event. | |
| **generic_action_event** | [**GenericActionEvent**](GenericActionEvent.html) | Event triggered by generic actions. | [optional] |
| **outcome_achieved_event** | [**OutcomeAchievedEvent**](OutcomeAchievedEvent.html) | Event where a customer has achieved a specific outcome or goal. | [optional] |
| **segment_assigned_event** | [**SegmentAssignedEvent**](SegmentAssignedEvent.html) | Event where a customer has been assigned or tagged with a specific segment. | [optional] |
| **web_action_event** | [**WebActionEvent**](WebActionEvent.html) | Event triggered by web actions. | [optional] |
| **web_event** | [**WebEvent**](WebEvent.html) | Event that tracks user interactions with content in a browser such as pageviews, downloads, mobile ad clicks, etc. | [optional] |
| **created_date** | **DateTime** | Timestamp indicating when the event actually took place. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
{: class="table table-striped"}

