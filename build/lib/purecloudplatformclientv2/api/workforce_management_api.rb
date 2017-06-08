=begin
PureCloud Platform API

With the PureCloud Platform API, you can control all aspects of your PureCloud environment. With the APIs you can access the system configuration, manage conversations and more.

OpenAPI spec version: v2
Contact: DeveloperEvangelists@genesys.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: ININ
http://www.inin.com

Terms of Service: https://developer.mypurecloud.com/tos

=end

require "uri"

module PureCloud
  class WorkforceManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of UserScheduleAdherence records for the requested users
    # 
    # @param user_id User Id(s) for which to fetch current schedule adherence information.  Min 1, Max of 100 userIds per request
    # @param [Hash] opts the optional parameters
    # @return [Array<UserScheduleAdherence>]
    def get_workforcemanagement_adherence(user_id, opts = {})
      data, _status_code, _headers = get_workforcemanagement_adherence_with_http_info(user_id, opts)
      return data
    end

    # Get a list of UserScheduleAdherence records for the requested users
    # 
    # @param user_id User Id(s) for which to fetch current schedule adherence information.  Min 1, Max of 100 userIds per request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<UserScheduleAdherence>, Fixnum, Hash)>] Array<UserScheduleAdherence> data, response status code and response headers
    def get_workforcemanagement_adherence_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.get_workforcemanagement_adherence ..."
      end
      
      
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling WorkforceManagementApi.get_workforcemanagement_adherence" if user_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/adherence".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'userId'] = @api_client.build_collection_param(user_id, :multi)

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<UserScheduleAdherence>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#get_workforcemanagement_adherence\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get activity codes corresponding to a management unit
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param [Hash] opts the optional parameters
    # @return [ActivityCodeContainer]
    def get_workforcemanagement_managementunit_activitycodes(mu_id, opts = {})
      data, _status_code, _headers = get_workforcemanagement_managementunit_activitycodes_with_http_info(mu_id, opts)
      return data
    end

    # Get activity codes corresponding to a management unit
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivityCodeContainer, Fixnum, Hash)>] ActivityCodeContainer data, response status code and response headers
    def get_workforcemanagement_managementunit_activitycodes_with_http_info(mu_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.get_workforcemanagement_managementunit_activitycodes ..."
      end
      
      
      # verify the required parameter 'mu_id' is set
      fail ArgumentError, "Missing the required parameter 'mu_id' when calling WorkforceManagementApi.get_workforcemanagement_managementunit_activitycodes" if mu_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/managementunits/{muId}/activitycodes".sub('{format}','json').sub('{' + 'muId' + '}', mu_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ActivityCodeContainer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#get_workforcemanagement_managementunit_activitycodes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get intraday queues for the given date
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param date ISO-8601 date string with no time or timezone component, interpreted in the configured management unit time zone, e.g. 2017-01-23
    # @param [Hash] opts the optional parameters
    # @return [WfmIntradayQueueListing]
    def get_workforcemanagement_managementunit_intraday_queues(mu_id, date, opts = {})
      data, _status_code, _headers = get_workforcemanagement_managementunit_intraday_queues_with_http_info(mu_id, date, opts)
      return data
    end

    # Get intraday queues for the given date
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param date ISO-8601 date string with no time or timezone component, interpreted in the configured management unit time zone, e.g. 2017-01-23
    # @param [Hash] opts the optional parameters
    # @return [Array<(WfmIntradayQueueListing, Fixnum, Hash)>] WfmIntradayQueueListing data, response status code and response headers
    def get_workforcemanagement_managementunit_intraday_queues_with_http_info(mu_id, date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.get_workforcemanagement_managementunit_intraday_queues ..."
      end
      
      
      # verify the required parameter 'mu_id' is set
      fail ArgumentError, "Missing the required parameter 'mu_id' when calling WorkforceManagementApi.get_workforcemanagement_managementunit_intraday_queues" if mu_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'date' is set
      fail ArgumentError, "Missing the required parameter 'date' when calling WorkforceManagementApi.get_workforcemanagement_managementunit_intraday_queues" if date.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/managementunits/{muId}/intraday/queues".sub('{format}','json').sub('{' + 'muId' + '}', mu_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'date'] = date

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WfmIntradayQueueListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#get_workforcemanagement_managementunit_intraday_queues\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a time off request by id
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param user_id The userId to whom the Time Off Request applies.
    # @param time_off_request_id Time Off Request Id
    # @param [Hash] opts the optional parameters
    # @return [TimeOffRequest]
    def get_workforcemanagement_managementunit_user_timeoffrequest(mu_id, user_id, time_off_request_id, opts = {})
      data, _status_code, _headers = get_workforcemanagement_managementunit_user_timeoffrequest_with_http_info(mu_id, user_id, time_off_request_id, opts)
      return data
    end

    # Get a time off request by id
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param user_id The userId to whom the Time Off Request applies.
    # @param time_off_request_id Time Off Request Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(TimeOffRequest, Fixnum, Hash)>] TimeOffRequest data, response status code and response headers
    def get_workforcemanagement_managementunit_user_timeoffrequest_with_http_info(mu_id, user_id, time_off_request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.get_workforcemanagement_managementunit_user_timeoffrequest ..."
      end
      
      
      # verify the required parameter 'mu_id' is set
      fail ArgumentError, "Missing the required parameter 'mu_id' when calling WorkforceManagementApi.get_workforcemanagement_managementunit_user_timeoffrequest" if mu_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling WorkforceManagementApi.get_workforcemanagement_managementunit_user_timeoffrequest" if user_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'time_off_request_id' is set
      fail ArgumentError, "Missing the required parameter 'time_off_request_id' when calling WorkforceManagementApi.get_workforcemanagement_managementunit_user_timeoffrequest" if time_off_request_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/managementunits/{muId}/users/{userId}/timeoffrequests/{timeOffRequestId}".sub('{format}','json').sub('{' + 'muId' + '}', mu_id.to_s).sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'timeOffRequestId' + '}', time_off_request_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TimeOffRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#get_workforcemanagement_managementunit_user_timeoffrequest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of time off requests for any user
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param user_id The userId to whom the Time Off Request applies.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :recently_reviewed Limit results to requests that have been reviewed within the preceding 30 days (default to false)
    # @return [TimeOffRequestList]
    def get_workforcemanagement_managementunit_user_timeoffrequests(mu_id, user_id, opts = {})
      data, _status_code, _headers = get_workforcemanagement_managementunit_user_timeoffrequests_with_http_info(mu_id, user_id, opts)
      return data
    end

    # Get a list of time off requests for any user
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param user_id The userId to whom the Time Off Request applies.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :recently_reviewed Limit results to requests that have been reviewed within the preceding 30 days
    # @return [Array<(TimeOffRequestList, Fixnum, Hash)>] TimeOffRequestList data, response status code and response headers
    def get_workforcemanagement_managementunit_user_timeoffrequests_with_http_info(mu_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.get_workforcemanagement_managementunit_user_timeoffrequests ..."
      end
      
      
      # verify the required parameter 'mu_id' is set
      fail ArgumentError, "Missing the required parameter 'mu_id' when calling WorkforceManagementApi.get_workforcemanagement_managementunit_user_timeoffrequests" if mu_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling WorkforceManagementApi.get_workforcemanagement_managementunit_user_timeoffrequests" if user_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/managementunits/{muId}/users/{userId}/timeoffrequests".sub('{format}','json').sub('{' + 'muId' + '}', mu_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'recentlyReviewed'] = opts[:'recently_reviewed'] if opts[:'recently_reviewed']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TimeOffRequestList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#get_workforcemanagement_managementunit_user_timeoffrequests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get agents in the management unit
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param [Hash] opts the optional parameters
    # @return [WfmUserEntityListing]
    def get_workforcemanagement_managementunit_users(mu_id, opts = {})
      data, _status_code, _headers = get_workforcemanagement_managementunit_users_with_http_info(mu_id, opts)
      return data
    end

    # Get agents in the management unit
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WfmUserEntityListing, Fixnum, Hash)>] WfmUserEntityListing data, response status code and response headers
    def get_workforcemanagement_managementunit_users_with_http_info(mu_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.get_workforcemanagement_managementunit_users ..."
      end
      
      
      # verify the required parameter 'mu_id' is set
      fail ArgumentError, "Missing the required parameter 'mu_id' when calling WorkforceManagementApi.get_workforcemanagement_managementunit_users" if mu_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/managementunits/{muId}/users".sub('{format}','json').sub('{' + 'muId' + '}', mu_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WfmUserEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#get_workforcemanagement_managementunit_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get management units
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :selector Selector
    # @option opts [Integer] :page_size  (default to 25)
    # @option opts [Integer] :page_number  (default to 1)
    # @return [Array<ManagementUnit>]
    def get_workforcemanagement_managementunits(opts = {})
      data, _status_code, _headers = get_workforcemanagement_managementunits_with_http_info(opts)
      return data
    end

    # Get management units
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :selector Selector
    # @option opts [Integer] :page_size 
    # @option opts [Integer] :page_number 
    # @return [Array<(Array<ManagementUnit>, Fixnum, Hash)>] Array<ManagementUnit> data, response status code and response headers
    def get_workforcemanagement_managementunits_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.get_workforcemanagement_managementunits ..."
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/managementunits".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'selector'] = opts[:'selector'] if opts[:'selector']
      query_params[:'pageSize'] = opts[:'page_size'] if opts[:'page_size']
      query_params[:'pageNumber'] = opts[:'page_number'] if opts[:'page_number']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ManagementUnit>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#get_workforcemanagement_managementunits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a time off request for the current user by id
    # 
    # @param time_off_request_id Time Off Request Id
    # @param [Hash] opts the optional parameters
    # @return [TimeOffRequest]
    def get_workforcemanagement_timeoffrequest(time_off_request_id, opts = {})
      data, _status_code, _headers = get_workforcemanagement_timeoffrequest_with_http_info(time_off_request_id, opts)
      return data
    end

    # Get a time off request for the current user by id
    # 
    # @param time_off_request_id Time Off Request Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(TimeOffRequest, Fixnum, Hash)>] TimeOffRequest data, response status code and response headers
    def get_workforcemanagement_timeoffrequest_with_http_info(time_off_request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.get_workforcemanagement_timeoffrequest ..."
      end
      
      
      # verify the required parameter 'time_off_request_id' is set
      fail ArgumentError, "Missing the required parameter 'time_off_request_id' when calling WorkforceManagementApi.get_workforcemanagement_timeoffrequest" if time_off_request_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/timeoffrequests/{timeOffRequestId}".sub('{format}','json').sub('{' + 'timeOffRequestId' + '}', time_off_request_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TimeOffRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#get_workforcemanagement_timeoffrequest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of time off requests for the current user
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :recently_reviewed Limit results to requests that have been reviewed within the preceding 30 days (default to false)
    # @return [TimeOffRequestList]
    def get_workforcemanagement_timeoffrequests(opts = {})
      data, _status_code, _headers = get_workforcemanagement_timeoffrequests_with_http_info(opts)
      return data
    end

    # Get a list of time off requests for the current user
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :recently_reviewed Limit results to requests that have been reviewed within the preceding 30 days
    # @return [Array<(TimeOffRequestList, Fixnum, Hash)>] TimeOffRequestList data, response status code and response headers
    def get_workforcemanagement_timeoffrequests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.get_workforcemanagement_timeoffrequests ..."
      end
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/timeoffrequests".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'recentlyReviewed'] = opts[:'recently_reviewed'] if opts[:'recently_reviewed']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TimeOffRequestList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#get_workforcemanagement_timeoffrequests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark a time off request for the current user as read or unread
    # 
    # @param time_off_request_id Time Off Request Id
    # @param [Hash] opts the optional parameters
    # @option opts [TimeOffRequestPatch] :body 
    # @return [nil]
    def patch_workforcemanagement_timeoffrequest(time_off_request_id, opts = {})
      patch_workforcemanagement_timeoffrequest_with_http_info(time_off_request_id, opts)
      return nil
    end

    # Mark a time off request for the current user as read or unread
    # 
    # @param time_off_request_id Time Off Request Id
    # @param [Hash] opts the optional parameters
    # @option opts [TimeOffRequestPatch] :body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_workforcemanagement_timeoffrequest_with_http_info(time_off_request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.patch_workforcemanagement_timeoffrequest ..."
      end
      
      
      # verify the required parameter 'time_off_request_id' is set
      fail ArgumentError, "Missing the required parameter 'time_off_request_id' when calling WorkforceManagementApi.patch_workforcemanagement_timeoffrequest" if time_off_request_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/timeoffrequests/{timeOffRequestId}".sub('{format}','json').sub('{' + 'timeOffRequestId' + '}', time_off_request_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#patch_workforcemanagement_timeoffrequest\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get intraday data for the given date for the requested queueIds
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param [Hash] opts the optional parameters
    # @option opts [IntradayQueryDataCommand] :body body
    # @return [IntradayResponse]
    def post_workforcemanagement_managementunit_intraday(mu_id, opts = {})
      data, _status_code, _headers = post_workforcemanagement_managementunit_intraday_with_http_info(mu_id, opts)
      return data
    end

    # Get intraday data for the given date for the requested queueIds
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param [Hash] opts the optional parameters
    # @option opts [IntradayQueryDataCommand] :body body
    # @return [Array<(IntradayResponse, Fixnum, Hash)>] IntradayResponse data, response status code and response headers
    def post_workforcemanagement_managementunit_intraday_with_http_info(mu_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.post_workforcemanagement_managementunit_intraday ..."
      end
      
      
      # verify the required parameter 'mu_id' is set
      fail ArgumentError, "Missing the required parameter 'mu_id' when calling WorkforceManagementApi.post_workforcemanagement_managementunit_intraday" if mu_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/managementunits/{muId}/intraday".sub('{format}','json').sub('{' + 'muId' + '}', mu_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntradayResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#post_workforcemanagement_managementunit_intraday\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user schedules within the given time range
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param [Hash] opts the optional parameters
    # @option opts [UserListScheduleRequestBody] :body body
    # @return [UserScheduleContainer]
    def post_workforcemanagement_managementunit_schedules_search(mu_id, opts = {})
      data, _status_code, _headers = post_workforcemanagement_managementunit_schedules_search_with_http_info(mu_id, opts)
      return data
    end

    # Get user schedules within the given time range
    # 
    # @param mu_id The muId of the management unit, or &#39;mine&#39; for the management unit of the logged-in user.
    # @param [Hash] opts the optional parameters
    # @option opts [UserListScheduleRequestBody] :body body
    # @return [Array<(UserScheduleContainer, Fixnum, Hash)>] UserScheduleContainer data, response status code and response headers
    def post_workforcemanagement_managementunit_schedules_search_with_http_info(mu_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.post_workforcemanagement_managementunit_schedules_search ..."
      end
      
      
      # verify the required parameter 'mu_id' is set
      fail ArgumentError, "Missing the required parameter 'mu_id' when calling WorkforceManagementApi.post_workforcemanagement_managementunit_schedules_search" if mu_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/managementunits/{muId}/schedules/search".sub('{format}','json').sub('{' + 'muId' + '}', mu_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserScheduleContainer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#post_workforcemanagement_managementunit_schedules_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a schedule for the current user
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CurrentUserScheduleRequestBody] :body body
    # @return [UserScheduleContainer]
    def post_workforcemanagement_schedules(opts = {})
      data, _status_code, _headers = post_workforcemanagement_schedules_with_http_info(opts)
      return data
    end

    # Get a schedule for the current user
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CurrentUserScheduleRequestBody] :body body
    # @return [Array<(UserScheduleContainer, Fixnum, Hash)>] UserScheduleContainer data, response status code and response headers
    def post_workforcemanagement_schedules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkforceManagementApi.post_workforcemanagement_schedules ..."
      end
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/workforcemanagement/schedules".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserScheduleContainer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkforceManagementApi#post_workforcemanagement_schedules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
