=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiMigrationStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get migration status summary
    # Get migration status summary
    # @param [Hash] opts the optional parameters
    # @option opts [String] :component_type Component type based on which migration units to be filtered
    # @return [MigrationStatus]
    def get_migration_status_summary(opts = {})
      data, _status_code, _headers = get_migration_status_summary_with_http_info(opts)
      data
    end

    # Get migration status summary
    # Get migration status summary
    # @param [Hash] opts the optional parameters
    # @option opts [String] :component_type Component type based on which migration units to be filtered
    # @return [Array<(MigrationStatus, Fixnum, Hash)>] MigrationStatus data, response status code and response headers
    def get_migration_status_summary_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiMigrationStatusApi.get_migration_status_summary ...'
      end
      # resource path
      local_var_path = '/migration/status-summary'

      # query parameters
      query_params = {}
      query_params[:'component_type'] = opts[:'component_type'] if !opts[:'component_type'].nil?

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
        :return_type => 'MigrationStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiMigrationStatusApi#get_migration_status_summary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get migration summary
    # Get migration summary
    # @param [Hash] opts the optional parameters
    # @return [MigrationSummary]
    def get_migration_summary(opts = {})
      data, _status_code, _headers = get_migration_summary_with_http_info(opts)
      data
    end

    # Get migration summary
    # Get migration summary
    # @param [Hash] opts the optional parameters
    # @return [Array<(MigrationSummary, Fixnum, Hash)>] MigrationSummary data, response status code and response headers
    def get_migration_summary_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiMigrationStatusApi.get_migration_summary ...'
      end
      # resource path
      local_var_path = '/migration/summary'

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
        :return_type => 'MigrationSummary')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiMigrationStatusApi#get_migration_summary\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
