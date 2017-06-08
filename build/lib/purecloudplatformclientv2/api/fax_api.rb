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
  class FaxApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete a fax document.
    # 
    # @param document_id Document ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_fax_document(document_id, opts = {})
      delete_fax_document_with_http_info(document_id, opts)
      return nil
    end

    # Delete a fax document.
    # 
    # @param document_id Document ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_fax_document_with_http_info(document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxApi.delete_fax_document ..."
      end
      
      
      # verify the required parameter 'document_id' is set
      fail ArgumentError, "Missing the required parameter 'document_id' when calling FaxApi.delete_fax_document" if document_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/fax/documents/{documentId}".sub('{format}','json').sub('{' + 'documentId' + '}', document_id.to_s)

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
        @api_client.config.logger.debug "API called: FaxApi#delete_fax_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a document.
    # 
    # @param document_id Document ID
    # @param [Hash] opts the optional parameters
    # @return [FaxDocument]
    def get_fax_document(document_id, opts = {})
      data, _status_code, _headers = get_fax_document_with_http_info(document_id, opts)
      return data
    end

    # Get a document.
    # 
    # @param document_id Document ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(FaxDocument, Fixnum, Hash)>] FaxDocument data, response status code and response headers
    def get_fax_document_with_http_info(document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxApi.get_fax_document ..."
      end
      
      
      # verify the required parameter 'document_id' is set
      fail ArgumentError, "Missing the required parameter 'document_id' when calling FaxApi.get_fax_document" if document_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/fax/documents/{documentId}".sub('{format}','json').sub('{' + 'documentId' + '}', document_id.to_s)

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
        :return_type => 'FaxDocument')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxApi#get_fax_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a fax document.
    # 
    # @param document_id Document ID
    # @param [Hash] opts the optional parameters
    # @return [DownloadResponse]
    def get_fax_document_content(document_id, opts = {})
      data, _status_code, _headers = get_fax_document_content_with_http_info(document_id, opts)
      return data
    end

    # Download a fax document.
    # 
    # @param document_id Document ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DownloadResponse, Fixnum, Hash)>] DownloadResponse data, response status code and response headers
    def get_fax_document_content_with_http_info(document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxApi.get_fax_document_content ..."
      end
      
      
      # verify the required parameter 'document_id' is set
      fail ArgumentError, "Missing the required parameter 'document_id' when calling FaxApi.get_fax_document_content" if document_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/fax/documents/{documentId}/content".sub('{format}','json').sub('{' + 'documentId' + '}', document_id.to_s)

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
        :return_type => 'DownloadResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxApi#get_fax_document_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of fax documents.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size (default to 25)
    # @option opts [Integer] :page_number Page number (default to 1)
    # @return [FaxDocumentEntityListing]
    def get_fax_documents(opts = {})
      data, _status_code, _headers = get_fax_documents_with_http_info(opts)
      return data
    end

    # Get a list of fax documents.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size
    # @option opts [Integer] :page_number Page number
    # @return [Array<(FaxDocumentEntityListing, Fixnum, Hash)>] FaxDocumentEntityListing data, response status code and response headers
    def get_fax_documents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxApi.get_fax_documents ..."
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/fax/documents".sub('{format}','json')

      # query parameters
      query_params = {}
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
        :return_type => 'FaxDocumentEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxApi#get_fax_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get fax summary
    # 
    # @param [Hash] opts the optional parameters
    # @return [FaxSummary]
    def get_fax_summary(opts = {})
      data, _status_code, _headers = get_fax_summary_with_http_info(opts)
      return data
    end

    # Get fax summary
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FaxSummary, Fixnum, Hash)>] FaxSummary data, response status code and response headers
    def get_fax_summary_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxApi.get_fax_summary ..."
      end
      
      # resource path
      local_var_path = "/api/v2/fax/summary".sub('{format}','json')

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
        :return_type => 'FaxSummary')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxApi#get_fax_summary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a fax document.
    # 
    # @param document_id Document ID
    # @param body Document
    # @param [Hash] opts the optional parameters
    # @return [FaxDocument]
    def put_fax_document(document_id, body, opts = {})
      data, _status_code, _headers = put_fax_document_with_http_info(document_id, body, opts)
      return data
    end

    # Update a fax document.
    # 
    # @param document_id Document ID
    # @param body Document
    # @param [Hash] opts the optional parameters
    # @return [Array<(FaxDocument, Fixnum, Hash)>] FaxDocument data, response status code and response headers
    def put_fax_document_with_http_info(document_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxApi.put_fax_document ..."
      end
      
      
      # verify the required parameter 'document_id' is set
      fail ArgumentError, "Missing the required parameter 'document_id' when calling FaxApi.put_fax_document" if document_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling FaxApi.put_fax_document" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/fax/documents/{documentId}".sub('{format}','json').sub('{' + 'documentId' + '}', document_id.to_s)

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
        :return_type => 'FaxDocument')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxApi#put_fax_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
