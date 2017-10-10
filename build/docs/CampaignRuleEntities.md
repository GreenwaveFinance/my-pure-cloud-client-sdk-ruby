---
title: CampaignRuleEntities
---
## PureCloud::CampaignRuleEntities

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **campaigns** | [**Array&lt;UriReference&gt;**](UriReference.html) | The list of campaigns for a CampaignRule to monitor. Required if the CampaignRule has any conditions that run on a campaign. | [optional] |
| **sequences** | [**Array&lt;UriReference&gt;**](UriReference.html) | The list of sequences for a CampaignRule to monitor. Required if the CampaignRule has any conditions that run on a sequence. | [optional] |
{: class="table table-striped"}


