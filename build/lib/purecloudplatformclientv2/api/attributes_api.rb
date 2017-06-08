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
  class AttributesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete an existing Attribute.
    # This will remove attribute.
    # @param attribute_id Attribute ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_attribute(attribute_id, opts = {})
      delete_attribute_with_http_info(attribute_id, opts)
      return nil
    end

    # Delete an existing Attribute.
    # This will remove attribute.
    # @param attribute_id Attribute ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_attribute_with_http_info(attribute_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.delete_attribute ..."
      end
      
      
      # verify the required parameter 'attribute_id' is set
      fail ArgumentError, "Missing the required parameter 'attribute_id' when calling AttributesApi.delete_attribute" if attribute_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/attributes/{attributeId}".sub('{format}','json').sub('{' + 'attributeId' + '}', attribute_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#delete_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details about an existing attribute.
    # 
    # @param attribute_id Attribute ID
    # @param [Hash] opts the optional parameters
    # @return [Attribute]
    def get_attribute(attribute_id, opts = {})
      data, _status_code, _headers = get_attribute_with_http_info(attribute_id, opts)
      return data
    end

    # Get details about an existing attribute.
    # 
    # @param attribute_id Attribute ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Attribute, Fixnum, Hash)>] Attribute data, response status code and response headers
    def get_attribute_with_http_info(attribute_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.get_attribute ..."
      end
      
      
      # verify the required parameter 'attribute_id' is set
      fail ArgumentError, "Missing the required parameter 'attribute_id' when calling AttributesApi.get_attribute" if attribute_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/attributes/{attributeId}".sub('{format}','json').sub('{' + 'attributeId' + '}', attribute_id.to_s)

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
        :return_type => 'Attribute')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#get_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of existing attributes.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_number Page number (default to 1)
    # @option opts [Integer] :page_size Page size (default to 25)
    # @return [AttributeEntityListing]
    def get_attributes(opts = {})
      data, _status_code, _headers = get_attributes_with_http_info(opts)
      return data
    end

    # Gets a list of existing attributes.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_number Page number
    # @option opts [Integer] :page_size Page size
    # @return [Array<(AttributeEntityListing, Fixnum, Hash)>] AttributeEntityListing data, response status code and response headers
    def get_attributes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.get_attributes ..."
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/attributes".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'pageNumber'] = opts[:'page_number'] if opts[:'page_number']
      query_params[:'pageSize'] = opts[:'page_size'] if opts[:'page_size']

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
        :return_type => 'AttributeEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#get_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an attribute.
    # 
    # @param body Attribute
    # @param [Hash] opts the optional parameters
    # @return [Attribute]
    def post_attributes(body, opts = {})
      data, _status_code, _headers = post_attributes_with_http_info(body, opts)
      return data
    end

    # Create an attribute.
    # 
    # @param body Attribute
    # @param [Hash] opts the optional parameters
    # @return [Array<(Attribute, Fixnum, Hash)>] Attribute data, response status code and response headers
    def post_attributes_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.post_attributes ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling AttributesApi.post_attributes" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/attributes".sub('{format}','json')

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
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Attribute')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#post_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query attributes
    # 
    # @param body query
    # @param [Hash] opts the optional parameters
    # @return [AttributeEntityListing]
    def post_attributes_query(body, opts = {})
      data, _status_code, _headers = post_attributes_query_with_http_info(body, opts)
      return data
    end

    # Query attributes
    # 
    # @param body query
    # @param [Hash] opts the optional parameters
    # @return [Array<(AttributeEntityListing, Fixnum, Hash)>] AttributeEntityListing data, response status code and response headers
    def post_attributes_query_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.post_attributes_query ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling AttributesApi.post_attributes_query" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/attributes/query".sub('{format}','json')

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
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AttributeEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#post_attributes_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing attribute.
    # Fields that can be updated: name, description. The most recent version is required for updates.
    # @param attribute_id Attribute ID
    # @param body Attribute
    # @param [Hash] opts the optional parameters
    # @return [Attribute]
    def put_attribute(attribute_id, body, opts = {})
      data, _status_code, _headers = put_attribute_with_http_info(attribute_id, body, opts)
      return data
    end

    # Update an existing attribute.
    # Fields that can be updated: name, description. The most recent version is required for updates.
    # @param attribute_id Attribute ID
    # @param body Attribute
    # @param [Hash] opts the optional parameters
    # @return [Array<(Attribute, Fixnum, Hash)>] Attribute data, response status code and response headers
    def put_attribute_with_http_info(attribute_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.put_attribute ..."
      end
      
      
      # verify the required parameter 'attribute_id' is set
      fail ArgumentError, "Missing the required parameter 'attribute_id' when calling AttributesApi.put_attribute" if attribute_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling AttributesApi.put_attribute" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/attributes/{attributeId}".sub('{format}','json').sub('{' + 'attributeId' + '}', attribute_id.to_s)

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
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Attribute')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#put_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
