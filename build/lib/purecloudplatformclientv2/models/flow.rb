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

require 'date'

module PureCloud
  class Flow
    # The flow identifier
    attr_accessor :id

    # The flow name
    attr_accessor :name

    # The division to which this entity belongs.
    attr_accessor :division

    attr_accessor :description

    attr_accessor :type

    attr_accessor :locked_user

    attr_accessor :active

    attr_accessor :system

    attr_accessor :deleted

    attr_accessor :published_version

    attr_accessor :saved_version

    # json schema describing the inputs for the flow
    attr_accessor :input_schema

    # json schema describing the outputs for the flow
    attr_accessor :output_schema

    attr_accessor :checked_in_version

    attr_accessor :published_by

    attr_accessor :current_operation

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'division' => :'division',
        
        :'description' => :'description',
        
        :'type' => :'type',
        
        :'locked_user' => :'lockedUser',
        
        :'active' => :'active',
        
        :'system' => :'system',
        
        :'deleted' => :'deleted',
        
        :'published_version' => :'publishedVersion',
        
        :'saved_version' => :'savedVersion',
        
        :'input_schema' => :'inputSchema',
        
        :'output_schema' => :'outputSchema',
        
        :'checked_in_version' => :'checkedInVersion',
        
        :'published_by' => :'publishedBy',
        
        :'current_operation' => :'currentOperation',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'division' => :'WritableDivision',
        
        :'description' => :'String',
        
        :'type' => :'String',
        
        :'locked_user' => :'User',
        
        :'active' => :'BOOLEAN',
        
        :'system' => :'BOOLEAN',
        
        :'deleted' => :'BOOLEAN',
        
        :'published_version' => :'FlowVersion',
        
        :'saved_version' => :'FlowVersion',
        
        :'input_schema' => :'Object',
        
        :'output_schema' => :'Object',
        
        :'checked_in_version' => :'FlowVersion',
        
        :'published_by' => :'User',
        
        :'current_operation' => :'Operation',
        
        :'self_uri' => :'String'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'id')
        
        
        self.id = attributes[:'id']
        
      
      end

      
      if attributes.has_key?(:'name')
        
        
        self.name = attributes[:'name']
        
      
      end

      
      if attributes.has_key?(:'division')
        
        
        self.division = attributes[:'division']
        
      
      end

      
      if attributes.has_key?(:'description')
        
        
        self.description = attributes[:'description']
        
      
      end

      
      if attributes.has_key?(:'type')
        
        
        self.type = attributes[:'type']
        
      
      end

      
      if attributes.has_key?(:'lockedUser')
        
        
        self.locked_user = attributes[:'lockedUser']
        
      
      end

      
      if attributes.has_key?(:'active')
        
        
        self.active = attributes[:'active']
        
      
      end

      
      if attributes.has_key?(:'system')
        
        
        self.system = attributes[:'system']
        
      
      end

      
      if attributes.has_key?(:'deleted')
        
        
        self.deleted = attributes[:'deleted']
        
      
      end

      
      if attributes.has_key?(:'publishedVersion')
        
        
        self.published_version = attributes[:'publishedVersion']
        
      
      end

      
      if attributes.has_key?(:'savedVersion')
        
        
        self.saved_version = attributes[:'savedVersion']
        
      
      end

      
      if attributes.has_key?(:'inputSchema')
        
        
        self.input_schema = attributes[:'inputSchema']
        
      
      end

      
      if attributes.has_key?(:'outputSchema')
        
        
        self.output_schema = attributes[:'outputSchema']
        
      
      end

      
      if attributes.has_key?(:'checkedInVersion')
        
        
        self.checked_in_version = attributes[:'checkedInVersion']
        
      
      end

      
      if attributes.has_key?(:'publishedBy')
        
        
        self.published_by = attributes[:'publishedBy']
        
      
      end

      
      if attributes.has_key?(:'currentOperation')
        
        
        self.current_operation = attributes[:'currentOperation']
        
      
      end

      
      if attributes.has_key?(:'selfUri')
        
        
        self.self_uri = attributes[:'selfUri']
        
      
      end

      
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      
      
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      
      
      
      
      
      
      if @name.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["INBOUNDCALL", "INBOUNDCHAT", "INBOUNDEMAIL", "INBOUNDSHORTMESSAGE", "INQUEUECALL", "OUTBOUNDCALL", "SECURECALL", "SPEECH", "SURVEYINVITE", "WORKFLOW"]
      if @type && !allowed_values.include?(@type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      allowed_values = ["INBOUNDCALL", "INBOUNDCHAT", "INBOUNDEMAIL", "INBOUNDSHORTMESSAGE", "INQUEUECALL", "OUTBOUNDCALL", "SECURECALL", "SPEECH", "SURVEYINVITE", "WORKFLOW"]
      if type && !allowed_values.include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{allowed_values}."
      end
      @type = type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          division == o.division &&
          description == o.description &&
          type == o.type &&
          locked_user == o.locked_user &&
          active == o.active &&
          system == o.system &&
          deleted == o.deleted &&
          published_version == o.published_version &&
          saved_version == o.saved_version &&
          input_schema == o.input_schema &&
          output_schema == o.output_schema &&
          checked_in_version == o.checked_in_version &&
          published_by == o.published_by &&
          current_operation == o.current_operation &&
          self_uri == o.self_uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, division, description, type, locked_user, active, system, deleted, published_version, saved_version, input_schema, output_schema, checked_in_version, published_by, current_operation, self_uri].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = Object.const_get("PureCloud").const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
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
