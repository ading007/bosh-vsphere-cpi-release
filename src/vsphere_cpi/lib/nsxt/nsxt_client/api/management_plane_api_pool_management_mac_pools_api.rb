=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiPoolManagementMacPoolsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List MAC Pools
    # Returns a list of all the MAC pools 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [MacPoolListResult]
    def list_mac_pools(opts = {})
      data, _status_code, _headers = list_mac_pools_with_http_info(opts)
      data
    end

    # List MAC Pools
    # Returns a list of all the MAC pools 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(MacPoolListResult, Fixnum, Hash)>] MacPoolListResult data, response status code and response headers
    def list_mac_pools_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiPoolManagementMacPoolsApi.list_mac_pools ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiPoolManagementMacPoolsApi.list_mac_pools, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiPoolManagementMacPoolsApi.list_mac_pools, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/pools/mac-pools'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MacPoolListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiPoolManagementMacPoolsApi#list_mac_pools\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read MAC Pool
    # Returns information about the specified MAC pool. 
    # @param pool_id MAC pool ID
    # @param [Hash] opts the optional parameters
    # @return [MacPool]
    def read_mac_pool(pool_id, opts = {})
      data, _status_code, _headers = read_mac_pool_with_http_info(pool_id, opts)
      data
    end

    # Read MAC Pool
    # Returns information about the specified MAC pool. 
    # @param pool_id MAC pool ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MacPool, Fixnum, Hash)>] MacPool data, response status code and response headers
    def read_mac_pool_with_http_info(pool_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiPoolManagementMacPoolsApi.read_mac_pool ...'
      end
      # verify the required parameter 'pool_id' is set
      if @api_client.config.client_side_validation && pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'pool_id' when calling ManagementPlaneApiPoolManagementMacPoolsApi.read_mac_pool"
      end
      # resource path
      local_var_path = '/pools/mac-pools/{pool-id}'.sub('{' + 'pool-id' + '}', pool_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MacPool')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiPoolManagementMacPoolsApi#read_mac_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
