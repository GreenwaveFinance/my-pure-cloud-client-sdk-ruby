=begin
PureCloud Platform API

With the PureCloud Platform API, you can control all aspects of your PureCloud environment. With the APIs you can access the system configuration, manage conversations and more.

OpenAPI spec version: v2
Contact: DeveloperEvangelists@genesys.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: UNLICENSED
https://help.mypurecloud.com/articles/terms-and-conditions/

Terms of Service: https://help.mypurecloud.com/articles/terms-and-conditions/

=end

require "uri"

module PureCloud
  class OrganizationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Fetch field config for an entity type
    # 
    # @param type Field type
    # @param [Hash] opts the optional parameters
    # @return [FieldConfig]
    def get_fieldconfig(type, opts = {})
      data, _status_code, _headers = get_fieldconfig_with_http_info(type, opts)
      return data
    end

    # Fetch field config for an entity type
    # 
    # @param type Field type
    # @param [Hash] opts the optional parameters
    # @return [Array<(FieldConfig, Fixnum, Hash)>] FieldConfig data, response status code and response headers
    def get_fieldconfig_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationApi.get_fieldconfig ..."
      end
      
      
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling OrganizationApi.get_fieldconfig" if type.nil?
      
      # verify enum value
      unless ['person', 'group', 'org', 'externalContact'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of person, group, org, externalContact"
      end
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/fieldconfig".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'type'] = type

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#get_fieldconfig\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get organization.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Organization]
    def get_organizations_me(opts = {})
      data, _status_code, _headers = get_organizations_me_with_http_info(opts)
      return data
    end

    # Get organization.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Fixnum, Hash)>] Organization data, response status code and response headers
    def get_organizations_me_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationApi.get_organizations_me ..."
      end
      
      # resource path
      local_var_path = "/api/v2/organizations/me".sub('{format}','json')

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Organization')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#get_organizations_me\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get organization whitelist settings
    # 
    # @param [Hash] opts the optional parameters
    # @return [OrgWhitelistSettings]
    def get_organizations_whitelist(opts = {})
      data, _status_code, _headers = get_organizations_whitelist_with_http_info(opts)
      return data
    end

    # Get organization whitelist settings
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrgWhitelistSettings, Fixnum, Hash)>] OrgWhitelistSettings data, response status code and response headers
    def get_organizations_whitelist_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationApi.get_organizations_whitelist ..."
      end
      
      # resource path
      local_var_path = "/api/v2/organizations/whitelist".sub('{format}','json')

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrgWhitelistSettings')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#get_organizations_whitelist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update organization
    # 
    # @param feature_name Organization feature
    # @param enabled New state of feature
    # @param [Hash] opts the optional parameters
    # @return [OrganizationFeatures]
    def patch_organizations_feature(feature_name, enabled, opts = {})
      data, _status_code, _headers = patch_organizations_feature_with_http_info(feature_name, enabled, opts)
      return data
    end

    # Update organization
    # 
    # @param feature_name Organization feature
    # @param enabled New state of feature
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationFeatures, Fixnum, Hash)>] OrganizationFeatures data, response status code and response headers
    def patch_organizations_feature_with_http_info(feature_name, enabled, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationApi.patch_organizations_feature ..."
      end
      
      
      # verify the required parameter 'feature_name' is set
      fail ArgumentError, "Missing the required parameter 'feature_name' when calling OrganizationApi.patch_organizations_feature" if feature_name.nil?
      
      # verify enum value
      unless ['realtimeCIC', 'purecloud', 'hipaa', 'ucEnabled', 'pci', 'purecloudVoice', 'xmppFederation', 'chat', 'informalPhotos', 'directory', 'contactCenter', 'unifiedCommunications', 'custserv'].include?(feature_name)
        fail ArgumentError, "invalid value for 'feature_name', must be one of realtimeCIC, purecloud, hipaa, ucEnabled, pci, purecloudVoice, xmppFederation, chat, informalPhotos, directory, contactCenter, unifiedCommunications, custserv"
      end
      
      
      
      
      
      
      # verify the required parameter 'enabled' is set
      fail ArgumentError, "Missing the required parameter 'enabled' when calling OrganizationApi.patch_organizations_feature" if enabled.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/organizations/features/{featureName}".sub('{format}','json').sub('{' + 'featureName' + '}', feature_name.to_s)

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
      post_body = @api_client.object_to_http_body(enabled)
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrganizationFeatures')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#patch_organizations_feature\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update organization.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Organization] :body Organization
    # @return [Organization]
    def put_organizations_me(opts = {})
      data, _status_code, _headers = put_organizations_me_with_http_info(opts)
      return data
    end

    # Update organization.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Organization] :body Organization
    # @return [Array<(Organization, Fixnum, Hash)>] Organization data, response status code and response headers
    def put_organizations_me_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationApi.put_organizations_me ..."
      end
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/organizations/me".sub('{format}','json')

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Organization')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#put_organizations_me\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update organization whitelist settings
    # 
    # @param body Whitelist settings
    # @param [Hash] opts the optional parameters
    # @return [OrgWhitelistSettings]
    def put_organizations_whitelist(body, opts = {})
      data, _status_code, _headers = put_organizations_whitelist_with_http_info(body, opts)
      return data
    end

    # Update organization whitelist settings
    # 
    # @param body Whitelist settings
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrgWhitelistSettings, Fixnum, Hash)>] OrgWhitelistSettings data, response status code and response headers
    def put_organizations_whitelist_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationApi.put_organizations_whitelist ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling OrganizationApi.put_organizations_whitelist" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/organizations/whitelist".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrgWhitelistSettings')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#put_organizations_whitelist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
