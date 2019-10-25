---
title: CreateWorkPlanShift
---
## PureCloud::CreateWorkPlanShift

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **name** | **String** | Name of the shift | |
| **days** | [**SetWrapperDayOfWeek**](SetWrapperDayOfWeek.html) | Days of the week applicable for this shift | [optional] |
| **flexible_start_time** | **BOOLEAN** | Whether the start time of the shift is flexible | [optional] |
| **exact_start_time_minutes_from_midnight** | **Integer** | Exact start time of the shift defined as offset minutes from midnight. Used if flexibleStartTime == false | [optional] |
| **earliest_start_time_minutes_from_midnight** | **Integer** | Earliest start time of the shift defined as offset minutes from midnight. Used if flexibleStartTime == true | [optional] |
| **latest_start_time_minutes_from_midnight** | **Integer** | Latest start time of the shift defined as offset minutes from midnight. Used if flexibleStartTime == true | [optional] |
| **constrain_stop_time** | **BOOLEAN** | Whether the latest stop time constraint for the shift is enabled | [optional] |
| **constrain_latest_stop_time** | **BOOLEAN** | Whether the latest stop time constraint for the shift is enabled | [optional] |
| **latest_stop_time_minutes_from_midnight** | **Integer** | Latest stop time of the shift defined as offset minutes from midnight. Used if constrainStopTime == true | [optional] |
| **constrain_earliest_stop_time** | **BOOLEAN** | Whether the earliest stop time constraint for the shift is enabled | [optional] |
| **earliest_stop_time_minutes_from_midnight** | **Integer** | This is the earliest time a shift can end | [optional] |
| **start_increment_minutes** | **Integer** | Increment in offset minutes that would contribute to different possible start times for the shift. Used if flexibleStartTime == true | [optional] |
| **flexible_paid_time** | **BOOLEAN** | Whether the paid time setting for the shift is flexible | [optional] |
| **exact_paid_time_minutes** | **Integer** | Exact paid time in minutes configured for the shift. Used if flexiblePaidTime == false | [optional] |
| **minimum_paid_time_minutes** | **Integer** | Minimum paid time in minutes configured for the shift. Used if flexiblePaidTime == true | [optional] |
| **maximum_paid_time_minutes** | **Integer** | Maximum paid time in minutes configured for the shift. Used if flexiblePaidTime == true | [optional] |
| **constrain_contiguous_work_time** | **BOOLEAN** | Whether the contiguous time constraint for the shift is enabled | [optional] |
| **minimum_contiguous_work_time_minutes** | **Integer** | Minimum contiguous time in minutes configured for the shift. Used if constrainContiguousWorkTime == true | [optional] |
| **maximum_contiguous_work_time_minutes** | **Integer** | Maximum contiguous time in minutes configured for the shift. Used if constrainContiguousWorkTime == true | [optional] |
| **synchronize_agents_schedules** | **BOOLEAN** | Whether synchronization for agent is enabled | [optional] |
| **synchronization_type** | **String** | This constraint ensures that an agent starts each workday within a user-defined time threshold. Used if synchronizeAgentsSchedules == true | [optional] |
| **constrain_day_off** | **BOOLEAN** | Whether day off rule is enabled | [optional] |
| **day_off_rule** | **String** | The day off rule for agents to have next day off or previous day off. used if constrainDayOff = true | [optional] |
| **activities** | [**Array&lt;CreateWorkPlanActivity&gt;**](CreateWorkPlanActivity.html) | Activities configured for this shift | [optional] |
{: class="table table-striped"}


