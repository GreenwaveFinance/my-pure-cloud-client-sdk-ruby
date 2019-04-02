---
title: SegmentAssignedEvent
---
## PureCloud::SegmentAssignedEvent

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **segment** | [**JourneySegment**](JourneySegment.html) | The segment that was matched. | |
| **user_agent_string** | **String** | HTTP User-Agent string (see https://tools.ietf.org/html/rfc1945#section-10.15). | [optional] |
| **browser** | [**Browser**](Browser.html) | Customer&#39;s browser. | [optional] |
| **device** | [**Device**](Device.html) | Customer&#39;s device. | [optional] |
| **geolocation** | [**JourneyGeolocation**](JourneyGeolocation.html) | Customer&#39;s geolocation. | [optional] |
| **ip_address** | **String** | Visitor&#39;s IP address. | [optional] |
| **ip_organization** | **String** | Visitor&#39;s IP-based organization or ISP name. | [optional] |
| **mkt_campaign** | [**JourneyCampaign**](JourneyCampaign.html) | Marketing / traffic source information. | [optional] |
| **visit_referrer** | [**Referrer**](Referrer.html) | Visit&#39;s referrer. | [optional] |
| **visit_created_date** | **DateTime** | When visit was created (e.g. timestamp of the first event in visit). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
{: class="table table-striped"}

