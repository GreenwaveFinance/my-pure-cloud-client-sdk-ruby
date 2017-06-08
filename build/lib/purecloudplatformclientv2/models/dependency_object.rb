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

require 'date'

module PureCloud
  class DependencyObject
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    attr_accessor :version

    attr_accessor :type

    attr_accessor :deleted

    attr_accessor :updated

    attr_accessor :state_unknown

    attr_accessor :consumed_resources

    attr_accessor :consuming_resources

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'version' => :'version',
        
        :'type' => :'type',
        
        :'deleted' => :'deleted',
        
        :'updated' => :'updated',
        
        :'state_unknown' => :'stateUnknown',
        
        :'consumed_resources' => :'consumedResources',
        
        :'consuming_resources' => :'consumingResources',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'version' => :'String',
        
        :'type' => :'String',
        
        :'deleted' => :'BOOLEAN',
        
        :'updated' => :'BOOLEAN',
        
        :'state_unknown' => :'BOOLEAN',
        
        :'consumed_resources' => :'Array<Dependency>',
        
        :'consuming_resources' => :'Array<Dependency>',
        
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

      
      if attributes.has_key?(:'version')
        
        
        self.version = attributes[:'version']
        
      
      end

      
      if attributes.has_key?(:'type')
        
        
        self.type = attributes[:'type']
        
      
      end

      
      if attributes.has_key?(:'deleted')
        
        
        self.deleted = attributes[:'deleted']
        
      
      end

      
      if attributes.has_key?(:'updated')
        
        
        self.updated = attributes[:'updated']
        
      
      end

      
      if attributes.has_key?(:'stateUnknown')
        
        
        self.state_unknown = attributes[:'stateUnknown']
        
      
      end

      
      if attributes.has_key?(:'consumedResources')
        
        if (value = attributes[:'consumedResources']).is_a?(Array)
          self.consumed_resources = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'consumingResources')
        
        if (value = attributes[:'consumingResources']).is_a?(Array)
          self.consuming_resources = value
        end
        
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["ACDLANGUAGE", "ACDSKILL", "ACDWRAPUPCODE", "BRIDGEACTION", "COMPOSERSCRIPT", "CONTACTLIST", "DATAACTION", "GROUP", "INBOUNDCALLFLOW", "INBOUNDEMAILFLOW", "INQUEUECALLFLOW", "IVRCONFIGURATION", "LANGUAGE", "OUTBOUNDCALLFLOW", "QUEUE", "RESPONSE", "SCHEDULE", "SCHEDULEGROUP", "SECUREACTION", "SECURECALLFLOW", "SYSTEMPROMPT", "USER", "USERPROMPT", "VOICEXML", "WORKFLOW"]
      if @type && !allowed_values.include?(@type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      allowed_values = ["ACDLANGUAGE", "ACDSKILL", "ACDWRAPUPCODE", "BRIDGEACTION", "COMPOSERSCRIPT", "CONTACTLIST", "DATAACTION", "GROUP", "INBOUNDCALLFLOW", "INBOUNDEMAILFLOW", "INQUEUECALLFLOW", "IVRCONFIGURATION", "LANGUAGE", "OUTBOUNDCALLFLOW", "QUEUE", "RESPONSE", "SCHEDULE", "SCHEDULEGROUP", "SECUREACTION", "SECURECALLFLOW", "SYSTEMPROMPT", "USER", "USERPROMPT", "VOICEXML", "WORKFLOW"]
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
          version == o.version &&
          type == o.type &&
          deleted == o.deleted &&
          updated == o.updated &&
          state_unknown == o.state_unknown &&
          consumed_resources == o.consumed_resources &&
          consuming_resources == o.consuming_resources &&
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
      [id, name, version, type, deleted, updated, state_unknown, consumed_resources, consuming_resources, self_uri].hash
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
