=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  # Simple expressions to represent NSGroup membership
  class NSGroupSimpleExpression
    attr_accessor :resource_type

    # Reference of the target. Will be populated when the property is a resource id, the op (operator) is EQUALS and populate_references is set to be true. 
    attr_accessor :target_resource

    # Field of the resource on which this expression is evaluated
    attr_accessor :target_property

    # Type of the resource on which this expression is evaluated
    attr_accessor :target_type

    # Value that satisfies this expression
    attr_accessor :value

    # Operator of the expression
    attr_accessor :op

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'resource_type' => :'resource_type',
        :'target_resource' => :'target_resource',
        :'target_property' => :'target_property',
        :'target_type' => :'target_type',
        :'value' => :'value',
        :'op' => :'op'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'resource_type' => :'String',
        :'target_resource' => :'ResourceReference',
        :'target_property' => :'String',
        :'target_type' => :'String',
        :'value' => :'String',
        :'op' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'target_resource')
        self.target_resource = attributes[:'target_resource']
      end

      if attributes.has_key?(:'target_property')
        self.target_property = attributes[:'target_property']
      end

      if attributes.has_key?(:'target_type')
        self.target_type = attributes[:'target_type']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'op')
        self.op = attributes[:'op']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @resource_type.nil?
        invalid_properties.push('invalid value for "resource_type", resource_type cannot be nil.')
      end

      if @target_property.nil?
        invalid_properties.push('invalid value for "target_property", target_property cannot be nil.')
      end

      if @target_type.nil?
        invalid_properties.push('invalid value for "target_type", target_type cannot be nil.')
      end

      if @value.nil?
        invalid_properties.push('invalid value for "value", value cannot be nil.')
      end

      if @op.nil?
        invalid_properties.push('invalid value for "op", op cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @resource_type.nil?
      resource_type_validator = EnumAttributeValidator.new('String', ['NSGroupSimpleExpression', 'NSGroupComplexExpression', 'NSGroupTagExpression'])
      return false unless resource_type_validator.valid?(@resource_type)
      return false if @target_property.nil?
      return false if @target_type.nil?
      target_type_validator = EnumAttributeValidator.new('String', ['NSGroup', 'IPSet', 'MACSet', 'LogicalSwitch', 'LogicalPort', 'VirtualMachine', 'DirectoryGroup', 'VirtualNetworkInterface', 'TransportNode'])
      return false unless target_type_validator.valid?(@target_type)
      return false if @value.nil?
      return false if @op.nil?
      op_validator = EnumAttributeValidator.new('String', ['EQUALS', 'CONTAINS', 'STARTSWITH', 'ENDSWITH', 'NOTEQUALS'])
      return false unless op_validator.valid?(@op)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_type Object to be assigned
    def resource_type=(resource_type)
      validator = EnumAttributeValidator.new('String', ['NSGroupSimpleExpression', 'NSGroupComplexExpression', 'NSGroupTagExpression'])
      unless validator.valid?(resource_type)
        fail ArgumentError, 'invalid value for "resource_type", must be one of #{validator.allowable_values}.'
      end
      @resource_type = resource_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target_type Object to be assigned
    def target_type=(target_type)
      validator = EnumAttributeValidator.new('String', ['NSGroup', 'IPSet', 'MACSet', 'LogicalSwitch', 'LogicalPort', 'VirtualMachine', 'DirectoryGroup', 'VirtualNetworkInterface', 'TransportNode'])
      unless validator.valid?(target_type)
        fail ArgumentError, 'invalid value for "target_type", must be one of #{validator.allowable_values}.'
      end
      @target_type = target_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] op Object to be assigned
    def op=(op)
      validator = EnumAttributeValidator.new('String', ['EQUALS', 'CONTAINS', 'STARTSWITH', 'ENDSWITH', 'NOTEQUALS'])
      unless validator.valid?(op)
        fail ArgumentError, 'invalid value for "op", must be one of #{validator.allowable_values}.'
      end
      @op = op
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          resource_type == o.resource_type &&
          target_resource == o.target_resource &&
          target_property == o.target_property &&
          target_type == o.target_type &&
          value == o.value &&
          op == o.op
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [resource_type, target_resource, target_property, target_type, value, op].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
