=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiNetworkTransportHostswitchProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Hostswitch Profile
    # Creates a hostswitch profile. The resource_type is required. For uplink profiles, the teaming and policy parameters are required. By default, the mtu is 1600 and the transport_vlan is 0. The supported MTU range is 1280 through (uplink_mtu_threshold). (uplink_mtu_threshold) is 9000 by default. Range can be extended by modifying (uplink_mtu_threshold) in SwitchingGlobalConfig to the required upper threshold. 
    # @param base_host_switch_profile 
    # @param [Hash] opts the optional parameters
    # @return [BaseHostSwitchProfile]
    def create_host_switch_profile(base_host_switch_profile, opts = {})
      data, _status_code, _headers = create_host_switch_profile_with_http_info(base_host_switch_profile, opts)
      data
    end

    # Create a Hostswitch Profile
    # Creates a hostswitch profile. The resource_type is required. For uplink profiles, the teaming and policy parameters are required. By default, the mtu is 1600 and the transport_vlan is 0. The supported MTU range is 1280 through (uplink_mtu_threshold). (uplink_mtu_threshold) is 9000 by default. Range can be extended by modifying (uplink_mtu_threshold) in SwitchingGlobalConfig to the required upper threshold. 
    # @param base_host_switch_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseHostSwitchProfile, Fixnum, Hash)>] BaseHostSwitchProfile data, response status code and response headers
    def create_host_switch_profile_with_http_info(base_host_switch_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportHostswitchProfilesApi.create_host_switch_profile ...'
      end
      # verify the required parameter 'base_host_switch_profile' is set
      if @api_client.config.client_side_validation && base_host_switch_profile.nil?
        fail ArgumentError, "Missing the required parameter 'base_host_switch_profile' when calling ManagementPlaneApiNetworkTransportHostswitchProfilesApi.create_host_switch_profile"
      end
      # resource path
      local_var_path = '/host-switch-profiles'

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
      post_body = @api_client.object_to_http_body(base_host_switch_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseHostSwitchProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportHostswitchProfilesApi#create_host_switch_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Hostswitch Profile
    # Deletes a specified hostswitch profile.
    # @param host_switch_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_host_switch_profile(host_switch_profile_id, opts = {})
      delete_host_switch_profile_with_http_info(host_switch_profile_id, opts)
      nil
    end

    # Delete a Hostswitch Profile
    # Deletes a specified hostswitch profile.
    # @param host_switch_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_host_switch_profile_with_http_info(host_switch_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportHostswitchProfilesApi.delete_host_switch_profile ...'
      end
      # verify the required parameter 'host_switch_profile_id' is set
      if @api_client.config.client_side_validation && host_switch_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'host_switch_profile_id' when calling ManagementPlaneApiNetworkTransportHostswitchProfilesApi.delete_host_switch_profile"
      end
      # resource path
      local_var_path = '/host-switch-profiles/{host-switch-profile-id}'.sub('{' + 'host-switch-profile-id' + '}', host_switch_profile_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportHostswitchProfilesApi#delete_host_switch_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a Hostswitch Profile by ID
    # Returns information about a specified hostswitch profile.
    # @param host_switch_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [BaseHostSwitchProfile]
    def get_host_switch_profile(host_switch_profile_id, opts = {})
      data, _status_code, _headers = get_host_switch_profile_with_http_info(host_switch_profile_id, opts)
      data
    end

    # Get a Hostswitch Profile by ID
    # Returns information about a specified hostswitch profile.
    # @param host_switch_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseHostSwitchProfile, Fixnum, Hash)>] BaseHostSwitchProfile data, response status code and response headers
    def get_host_switch_profile_with_http_info(host_switch_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportHostswitchProfilesApi.get_host_switch_profile ...'
      end
      # verify the required parameter 'host_switch_profile_id' is set
      if @api_client.config.client_side_validation && host_switch_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'host_switch_profile_id' when calling ManagementPlaneApiNetworkTransportHostswitchProfilesApi.get_host_switch_profile"
      end
      # resource path
      local_var_path = '/host-switch-profiles/{host-switch-profile-id}'.sub('{' + 'host-switch-profile-id' + '}', host_switch_profile_id.to_s)

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
        :return_type => 'BaseHostSwitchProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportHostswitchProfilesApi#get_host_switch_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Hostswitch Profiles
    # Returns information about the configured hostswitch profiles. Hostswitch profiles define networking policies for hostswitches (sometimes referred to as bridges in OVS). Currently, only uplink teaming is supported. Uplink teaming allows NSX to load balance traffic across different physical NICs (PNICs) on the hypervisor hosts. Multiple teaming policies are supported, including LACP active, LACP passive, load balancing based on source ID, and failover order. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :hostswitch_profile_type Supported HostSwitch profiles.
    # @option opts [BOOLEAN] :include_system_owned Whether the list result contains system resources (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :uplink_teaming_policy_name The host switch profile&#39;s uplink teaming policy name
    # @return [HostSwitchProfilesListResult]
    def list_host_switch_profiles(opts = {})
      data, _status_code, _headers = list_host_switch_profiles_with_http_info(opts)
      data
    end

    # List Hostswitch Profiles
    # Returns information about the configured hostswitch profiles. Hostswitch profiles define networking policies for hostswitches (sometimes referred to as bridges in OVS). Currently, only uplink teaming is supported. Uplink teaming allows NSX to load balance traffic across different physical NICs (PNICs) on the hypervisor hosts. Multiple teaming policies are supported, including LACP active, LACP passive, load balancing based on source ID, and failover order. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :hostswitch_profile_type Supported HostSwitch profiles.
    # @option opts [BOOLEAN] :include_system_owned Whether the list result contains system resources
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :uplink_teaming_policy_name The host switch profile&#39;s uplink teaming policy name
    # @return [Array<(HostSwitchProfilesListResult, Fixnum, Hash)>] HostSwitchProfilesListResult data, response status code and response headers
    def list_host_switch_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportHostswitchProfilesApi.list_host_switch_profiles ...'
      end
      if @api_client.config.client_side_validation && opts[:'hostswitch_profile_type'] && !['UplinkHostSwitchProfile', 'LldpHostSwitchProfile', 'NiocProfile', 'ExtraConfigHostSwitchProfile'].include?(opts[:'hostswitch_profile_type'])
        fail ArgumentError, 'invalid value for "hostswitch_profile_type", must be one of UplinkHostSwitchProfile, LldpHostSwitchProfile, NiocProfile, ExtraConfigHostSwitchProfile'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiNetworkTransportHostswitchProfilesApi.list_host_switch_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiNetworkTransportHostswitchProfilesApi.list_host_switch_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/host-switch-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'hostswitch_profile_type'] = opts[:'hostswitch_profile_type'] if !opts[:'hostswitch_profile_type'].nil?
      query_params[:'include_system_owned'] = opts[:'include_system_owned'] if !opts[:'include_system_owned'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'uplink_teaming_policy_name'] = opts[:'uplink_teaming_policy_name'] if !opts[:'uplink_teaming_policy_name'].nil?

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
        :return_type => 'HostSwitchProfilesListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportHostswitchProfilesApi#list_host_switch_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Hostswitch Profile
    # Modifies a specified hostswitch profile. The body of the PUT request must include the resource_type. For uplink profiles, the put request must also include teaming parameters. Modifiable attributes include display_name, mtu, and transport_vlan. For uplink teaming policies, uplink_name and policy are also modifiable. 
    # @param host_switch_profile_id 
    # @param base_host_switch_profile 
    # @param [Hash] opts the optional parameters
    # @return [BaseHostSwitchProfile]
    def update_host_switch_profile(host_switch_profile_id, base_host_switch_profile, opts = {})
      data, _status_code, _headers = update_host_switch_profile_with_http_info(host_switch_profile_id, base_host_switch_profile, opts)
      data
    end

    # Update a Hostswitch Profile
    # Modifies a specified hostswitch profile. The body of the PUT request must include the resource_type. For uplink profiles, the put request must also include teaming parameters. Modifiable attributes include display_name, mtu, and transport_vlan. For uplink teaming policies, uplink_name and policy are also modifiable. 
    # @param host_switch_profile_id 
    # @param base_host_switch_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseHostSwitchProfile, Fixnum, Hash)>] BaseHostSwitchProfile data, response status code and response headers
    def update_host_switch_profile_with_http_info(host_switch_profile_id, base_host_switch_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportHostswitchProfilesApi.update_host_switch_profile ...'
      end
      # verify the required parameter 'host_switch_profile_id' is set
      if @api_client.config.client_side_validation && host_switch_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'host_switch_profile_id' when calling ManagementPlaneApiNetworkTransportHostswitchProfilesApi.update_host_switch_profile"
      end
      # verify the required parameter 'base_host_switch_profile' is set
      if @api_client.config.client_side_validation && base_host_switch_profile.nil?
        fail ArgumentError, "Missing the required parameter 'base_host_switch_profile' when calling ManagementPlaneApiNetworkTransportHostswitchProfilesApi.update_host_switch_profile"
      end
      # resource path
      local_var_path = '/host-switch-profiles/{host-switch-profile-id}'.sub('{' + 'host-switch-profile-id' + '}', host_switch_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(base_host_switch_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseHostSwitchProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportHostswitchProfilesApi#update_host_switch_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
