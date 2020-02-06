=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiNetworkTransportTransportProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a transport zone Profile
    # Creates a transport zone profile. The resource_type is required. 
    # @param transport_zone_profile 
    # @param [Hash] opts the optional parameters
    # @return [TransportZoneProfile]
    def create_transport_zone_profile(transport_zone_profile, opts = {})
      data, _status_code, _headers = create_transport_zone_profile_with_http_info(transport_zone_profile, opts)
      data
    end

    # Create a transport zone Profile
    # Creates a transport zone profile. The resource_type is required. 
    # @param transport_zone_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransportZoneProfile, Fixnum, Hash)>] TransportZoneProfile data, response status code and response headers
    def create_transport_zone_profile_with_http_info(transport_zone_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportTransportProfilesApi.create_transport_zone_profile ...'
      end
      # verify the required parameter 'transport_zone_profile' is set
      if @api_client.config.client_side_validation && transport_zone_profile.nil?
        fail ArgumentError, "Missing the required parameter 'transport_zone_profile' when calling ManagementPlaneApiNetworkTransportTransportProfilesApi.create_transport_zone_profile"
      end
      # resource path
      local_var_path = '/transportzone-profiles'

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
      post_body = @api_client.object_to_http_body(transport_zone_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransportZoneProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportTransportProfilesApi#create_transport_zone_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a transport zone Profile
    # Deletes a specified transport zone profile.
    # @param transportzone_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_transport_zone_profile(transportzone_profile_id, opts = {})
      delete_transport_zone_profile_with_http_info(transportzone_profile_id, opts)
      nil
    end

    # Delete a transport zone Profile
    # Deletes a specified transport zone profile.
    # @param transportzone_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_transport_zone_profile_with_http_info(transportzone_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportTransportProfilesApi.delete_transport_zone_profile ...'
      end
      # verify the required parameter 'transportzone_profile_id' is set
      if @api_client.config.client_side_validation && transportzone_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'transportzone_profile_id' when calling ManagementPlaneApiNetworkTransportTransportProfilesApi.delete_transport_zone_profile"
      end
      # resource path
      local_var_path = '/transportzone-profiles/{transportzone-profile-id}'.sub('{' + 'transportzone-profile-id' + '}', transportzone_profile_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportTransportProfilesApi#delete_transport_zone_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get transport zone profile by identifier
    # Returns information about a specified transport zone profile.
    # @param transportzone_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [TransportZoneProfile]
    def get_transport_zone_profile(transportzone_profile_id, opts = {})
      data, _status_code, _headers = get_transport_zone_profile_with_http_info(transportzone_profile_id, opts)
      data
    end

    # Get transport zone profile by identifier
    # Returns information about a specified transport zone profile.
    # @param transportzone_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransportZoneProfile, Fixnum, Hash)>] TransportZoneProfile data, response status code and response headers
    def get_transport_zone_profile_with_http_info(transportzone_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportTransportProfilesApi.get_transport_zone_profile ...'
      end
      # verify the required parameter 'transportzone_profile_id' is set
      if @api_client.config.client_side_validation && transportzone_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'transportzone_profile_id' when calling ManagementPlaneApiNetworkTransportTransportProfilesApi.get_transport_zone_profile"
      end
      # resource path
      local_var_path = '/transportzone-profiles/{transportzone-profile-id}'.sub('{' + 'transportzone-profile-id' + '}', transportzone_profile_id.to_s)

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
        :return_type => 'TransportZoneProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportTransportProfilesApi#get_transport_zone_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List transport zone profiles
    # Returns information about the configured transport zone profiles. Transport zone profiles define networking policies for transport zones and transport zone endpoints. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_system_owned Whether the list result contains system resources (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :resource_type comma-separated list of transport zone profile types, e.g. ?resource_type&#x3D;BfdHealthMonitoringProfile
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [TransportZoneProfileListResult]
    def list_transport_zone_profiles(opts = {})
      data, _status_code, _headers = list_transport_zone_profiles_with_http_info(opts)
      data
    end

    # List transport zone profiles
    # Returns information about the configured transport zone profiles. Transport zone profiles define networking policies for transport zones and transport zone endpoints. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_system_owned Whether the list result contains system resources
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :resource_type comma-separated list of transport zone profile types, e.g. ?resource_type&#x3D;BfdHealthMonitoringProfile
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(TransportZoneProfileListResult, Fixnum, Hash)>] TransportZoneProfileListResult data, response status code and response headers
    def list_transport_zone_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportTransportProfilesApi.list_transport_zone_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiNetworkTransportTransportProfilesApi.list_transport_zone_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiNetworkTransportTransportProfilesApi.list_transport_zone_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/transportzone-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_system_owned'] = opts[:'include_system_owned'] if !opts[:'include_system_owned'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'resource_type'] = opts[:'resource_type'] if !opts[:'resource_type'].nil?
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
        :return_type => 'TransportZoneProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportTransportProfilesApi#list_transport_zone_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a transport zone profile
    # Modifies a specified transport zone profile. The body of the PUT request must include the resource_type. 
    # @param transportzone_profile_id 
    # @param transport_zone_profile 
    # @param [Hash] opts the optional parameters
    # @return [TransportZoneProfile]
    def update_transport_zone_profile(transportzone_profile_id, transport_zone_profile, opts = {})
      data, _status_code, _headers = update_transport_zone_profile_with_http_info(transportzone_profile_id, transport_zone_profile, opts)
      data
    end

    # Update a transport zone profile
    # Modifies a specified transport zone profile. The body of the PUT request must include the resource_type. 
    # @param transportzone_profile_id 
    # @param transport_zone_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransportZoneProfile, Fixnum, Hash)>] TransportZoneProfile data, response status code and response headers
    def update_transport_zone_profile_with_http_info(transportzone_profile_id, transport_zone_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportTransportProfilesApi.update_transport_zone_profile ...'
      end
      # verify the required parameter 'transportzone_profile_id' is set
      if @api_client.config.client_side_validation && transportzone_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'transportzone_profile_id' when calling ManagementPlaneApiNetworkTransportTransportProfilesApi.update_transport_zone_profile"
      end
      # verify the required parameter 'transport_zone_profile' is set
      if @api_client.config.client_side_validation && transport_zone_profile.nil?
        fail ArgumentError, "Missing the required parameter 'transport_zone_profile' when calling ManagementPlaneApiNetworkTransportTransportProfilesApi.update_transport_zone_profile"
      end
      # resource path
      local_var_path = '/transportzone-profiles/{transportzone-profile-id}'.sub('{' + 'transportzone-profile-id' + '}', transportzone_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(transport_zone_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransportZoneProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportTransportProfilesApi#update_transport_zone_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
