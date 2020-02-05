=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiFabricComputeManagersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Register compute manager with NSX
    # Registers compute manager with NSX. Inventory service will collect data from the registered compute manager 
    # @param compute_manager 
    # @param [Hash] opts the optional parameters
    # @return [ComputeManager]
    def add_compute_manager(compute_manager, opts = {})
      data, _status_code, _headers = add_compute_manager_with_http_info(compute_manager, opts)
      data
    end

    # Register compute manager with NSX
    # Registers compute manager with NSX. Inventory service will collect data from the registered compute manager 
    # @param compute_manager 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComputeManager, Fixnum, Hash)>] ComputeManager data, response status code and response headers
    def add_compute_manager_with_http_info(compute_manager, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeManagersApi.add_compute_manager ...'
      end
      # verify the required parameter 'compute_manager' is set
      if @api_client.config.client_side_validation && compute_manager.nil?
        fail ArgumentError, "Missing the required parameter 'compute_manager' when calling ManagementPlaneApiFabricComputeManagersApi.add_compute_manager"
      end
      # resource path
      local_var_path = '/fabric/compute-managers'

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
      post_body = @api_client.object_to_http_body(compute_manager)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ComputeManager')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeManagersApi#add_compute_manager\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unregister a compute manager
    # Unregisters a specified compute manager 
    # @param compute_manager_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_compute_manager(compute_manager_id, opts = {})
      delete_compute_manager_with_http_info(compute_manager_id, opts)
      nil
    end

    # Unregister a compute manager
    # Unregisters a specified compute manager 
    # @param compute_manager_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_compute_manager_with_http_info(compute_manager_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeManagersApi.delete_compute_manager ...'
      end
      # verify the required parameter 'compute_manager_id' is set
      if @api_client.config.client_side_validation && compute_manager_id.nil?
        fail ArgumentError, "Missing the required parameter 'compute_manager_id' when calling ManagementPlaneApiFabricComputeManagersApi.delete_compute_manager"
      end
      # resource path
      local_var_path = '/fabric/compute-managers/{compute-manager-id}'.sub('{' + 'compute-manager-id' + '}', compute_manager_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeManagersApi#delete_compute_manager\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the realized state of a compute manager
    # Get the realized state of a compute manager
    # @param compute_manager_id 
    # @param [Hash] opts the optional parameters
    # @return [ConfigurationState]
    def get_compute_manager_state(compute_manager_id, opts = {})
      data, _status_code, _headers = get_compute_manager_state_with_http_info(compute_manager_id, opts)
      data
    end

    # Get the realized state of a compute manager
    # Get the realized state of a compute manager
    # @param compute_manager_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigurationState, Fixnum, Hash)>] ConfigurationState data, response status code and response headers
    def get_compute_manager_state_with_http_info(compute_manager_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeManagersApi.get_compute_manager_state ...'
      end
      # verify the required parameter 'compute_manager_id' is set
      if @api_client.config.client_side_validation && compute_manager_id.nil?
        fail ArgumentError, "Missing the required parameter 'compute_manager_id' when calling ManagementPlaneApiFabricComputeManagersApi.get_compute_manager_state"
      end
      # resource path
      local_var_path = '/fabric/compute-managers/{compute-manager-id}/state'.sub('{' + 'compute-manager-id' + '}', compute_manager_id.to_s)

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
        :return_type => 'ConfigurationState')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeManagersApi#get_compute_manager_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the List of Compute managers
    # Returns information about all compute managers.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :origin_type Compute manager type like vCenter
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :server IP address or hostname of compute manager
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [ComputeManagerListResult]
    def list_compute_managers(opts = {})
      data, _status_code, _headers = list_compute_managers_with_http_info(opts)
      data
    end

    # Return the List of Compute managers
    # Returns information about all compute managers.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :origin_type Compute manager type like vCenter
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :server IP address or hostname of compute manager
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(ComputeManagerListResult, Fixnum, Hash)>] ComputeManagerListResult data, response status code and response headers
    def list_compute_managers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeManagersApi.list_compute_managers ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiFabricComputeManagersApi.list_compute_managers, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiFabricComputeManagersApi.list_compute_managers, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/fabric/compute-managers'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'origin_type'] = opts[:'origin_type'] if !opts[:'origin_type'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'server'] = opts[:'server'] if !opts[:'server'].nil?
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
        :return_type => 'ComputeManagerListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeManagersApi#list_compute_managers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return compute manager Information
    # Returns information about a specific compute manager
    # @param compute_manager_id 
    # @param [Hash] opts the optional parameters
    # @return [ComputeManager]
    def read_compute_manager(compute_manager_id, opts = {})
      data, _status_code, _headers = read_compute_manager_with_http_info(compute_manager_id, opts)
      data
    end

    # Return compute manager Information
    # Returns information about a specific compute manager
    # @param compute_manager_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComputeManager, Fixnum, Hash)>] ComputeManager data, response status code and response headers
    def read_compute_manager_with_http_info(compute_manager_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeManagersApi.read_compute_manager ...'
      end
      # verify the required parameter 'compute_manager_id' is set
      if @api_client.config.client_side_validation && compute_manager_id.nil?
        fail ArgumentError, "Missing the required parameter 'compute_manager_id' when calling ManagementPlaneApiFabricComputeManagersApi.read_compute_manager"
      end
      # resource path
      local_var_path = '/fabric/compute-managers/{compute-manager-id}'.sub('{' + 'compute-manager-id' + '}', compute_manager_id.to_s)

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
        :return_type => 'ComputeManager')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeManagersApi#read_compute_manager\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return runtime status information for a compute manager
    # Returns connection and version information about a compute manager 
    # @param compute_manager_id 
    # @param [Hash] opts the optional parameters
    # @return [ComputeManagerStatus]
    def read_compute_manager_status(compute_manager_id, opts = {})
      data, _status_code, _headers = read_compute_manager_status_with_http_info(compute_manager_id, opts)
      data
    end

    # Return runtime status information for a compute manager
    # Returns connection and version information about a compute manager 
    # @param compute_manager_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComputeManagerStatus, Fixnum, Hash)>] ComputeManagerStatus data, response status code and response headers
    def read_compute_manager_status_with_http_info(compute_manager_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeManagersApi.read_compute_manager_status ...'
      end
      # verify the required parameter 'compute_manager_id' is set
      if @api_client.config.client_side_validation && compute_manager_id.nil?
        fail ArgumentError, "Missing the required parameter 'compute_manager_id' when calling ManagementPlaneApiFabricComputeManagersApi.read_compute_manager_status"
      end
      # resource path
      local_var_path = '/fabric/compute-managers/{compute-manager-id}/status'.sub('{' + 'compute-manager-id' + '}', compute_manager_id.to_s)

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
        :return_type => 'ComputeManagerStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeManagersApi#read_compute_manager_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update compute manager
    # Updates a specified compute manager 
    # @param compute_manager_id 
    # @param compute_manager 
    # @param [Hash] opts the optional parameters
    # @return [ComputeManager]
    def update_compute_manager(compute_manager_id, compute_manager, opts = {})
      data, _status_code, _headers = update_compute_manager_with_http_info(compute_manager_id, compute_manager, opts)
      data
    end

    # Update compute manager
    # Updates a specified compute manager 
    # @param compute_manager_id 
    # @param compute_manager 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComputeManager, Fixnum, Hash)>] ComputeManager data, response status code and response headers
    def update_compute_manager_with_http_info(compute_manager_id, compute_manager, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeManagersApi.update_compute_manager ...'
      end
      # verify the required parameter 'compute_manager_id' is set
      if @api_client.config.client_side_validation && compute_manager_id.nil?
        fail ArgumentError, "Missing the required parameter 'compute_manager_id' when calling ManagementPlaneApiFabricComputeManagersApi.update_compute_manager"
      end
      # verify the required parameter 'compute_manager' is set
      if @api_client.config.client_side_validation && compute_manager.nil?
        fail ArgumentError, "Missing the required parameter 'compute_manager' when calling ManagementPlaneApiFabricComputeManagersApi.update_compute_manager"
      end
      # resource path
      local_var_path = '/fabric/compute-managers/{compute-manager-id}'.sub('{' + 'compute-manager-id' + '}', compute_manager_id.to_s)

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
      post_body = @api_client.object_to_http_body(compute_manager)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ComputeManager')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeManagersApi#update_compute_manager\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end