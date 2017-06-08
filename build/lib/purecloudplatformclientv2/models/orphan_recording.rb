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
  class OrphanRecording
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :created_time

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :recovered_time

    attr_accessor :provider_type

    attr_accessor :media_size_bytes

    attr_accessor :media_type

    attr_accessor :file_state

    attr_accessor :provider_endpoint

    attr_accessor :recording

    # The status of the orphaned recording's conversation.
    attr_accessor :orphan_status

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'created_time' => :'createdTime',
        
        :'recovered_time' => :'recoveredTime',
        
        :'provider_type' => :'providerType',
        
        :'media_size_bytes' => :'mediaSizeBytes',
        
        :'media_type' => :'mediaType',
        
        :'file_state' => :'fileState',
        
        :'provider_endpoint' => :'providerEndpoint',
        
        :'recording' => :'recording',
        
        :'orphan_status' => :'orphanStatus',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'created_time' => :'DateTime',
        
        :'recovered_time' => :'DateTime',
        
        :'provider_type' => :'String',
        
        :'media_size_bytes' => :'Integer',
        
        :'media_type' => :'String',
        
        :'file_state' => :'String',
        
        :'provider_endpoint' => :'Endpoint',
        
        :'recording' => :'Recording',
        
        :'orphan_status' => :'String',
        
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

      
      if attributes.has_key?(:'createdTime')
        
        
        self.created_time = attributes[:'createdTime']
        
      
      end

      
      if attributes.has_key?(:'recoveredTime')
        
        
        self.recovered_time = attributes[:'recoveredTime']
        
      
      end

      
      if attributes.has_key?(:'providerType')
        
        
        self.provider_type = attributes[:'providerType']
        
      
      end

      
      if attributes.has_key?(:'mediaSizeBytes')
        
        
        self.media_size_bytes = attributes[:'mediaSizeBytes']
        
      
      end

      
      if attributes.has_key?(:'mediaType')
        
        
        self.media_type = attributes[:'mediaType']
        
      
      end

      
      if attributes.has_key?(:'fileState')
        
        
        self.file_state = attributes[:'fileState']
        
      
      end

      
      if attributes.has_key?(:'providerEndpoint')
        
        
        self.provider_endpoint = attributes[:'providerEndpoint']
        
      
      end

      
      if attributes.has_key?(:'recording')
        
        
        self.recording = attributes[:'recording']
        
      
      end

      
      if attributes.has_key?(:'orphanStatus')
        
        
        self.orphan_status = attributes[:'orphanStatus']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["EDGE", "CHAT", "EMAIL", "SCREEN_RECORDING"]
      if @provider_type && !allowed_values.include?(@provider_type)
        return false
      end
      
      
      
      
      
      
      
      
      
      allowed_values = ["CALL", "CHAT", "EMAIL", "SCREEN"]
      if @media_type && !allowed_values.include?(@media_type)
        return false
      end
      
      
      
      
      
      allowed_values = ["ARCHIVED", "AVAILABLE", "DELETED", "RESTORED", "RESTORING", "UPLOADING"]
      if @file_state && !allowed_values.include?(@file_state)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["NO_CONVERSATION", "UNKNOWN_CONVERSATION", "CONVERSATION_NOT_COMPLETE", "CONVERSATION_NOT_EVALUATED", "EVALUATED"]
      if @orphan_status && !allowed_values.include?(@orphan_status)
        return false
      end
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] provider_type Object to be assigned
    def provider_type=(provider_type)
      allowed_values = ["EDGE", "CHAT", "EMAIL", "SCREEN_RECORDING"]
      if provider_type && !allowed_values.include?(provider_type)
        fail ArgumentError, "invalid value for 'provider_type', must be one of #{allowed_values}."
      end
      @provider_type = provider_type
    end

    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] media_type Object to be assigned
    def media_type=(media_type)
      allowed_values = ["CALL", "CHAT", "EMAIL", "SCREEN"]
      if media_type && !allowed_values.include?(media_type)
        fail ArgumentError, "invalid value for 'media_type', must be one of #{allowed_values}."
      end
      @media_type = media_type
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] file_state Object to be assigned
    def file_state=(file_state)
      allowed_values = ["ARCHIVED", "AVAILABLE", "DELETED", "RESTORED", "RESTORING", "UPLOADING"]
      if file_state && !allowed_values.include?(file_state)
        fail ArgumentError, "invalid value for 'file_state', must be one of #{allowed_values}."
      end
      @file_state = file_state
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] orphan_status Object to be assigned
    def orphan_status=(orphan_status)
      allowed_values = ["NO_CONVERSATION", "UNKNOWN_CONVERSATION", "CONVERSATION_NOT_COMPLETE", "CONVERSATION_NOT_EVALUATED", "EVALUATED"]
      if orphan_status && !allowed_values.include?(orphan_status)
        fail ArgumentError, "invalid value for 'orphan_status', must be one of #{allowed_values}."
      end
      @orphan_status = orphan_status
    end

    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          created_time == o.created_time &&
          recovered_time == o.recovered_time &&
          provider_type == o.provider_type &&
          media_size_bytes == o.media_size_bytes &&
          media_type == o.media_type &&
          file_state == o.file_state &&
          provider_endpoint == o.provider_endpoint &&
          recording == o.recording &&
          orphan_status == o.orphan_status &&
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
      [id, name, created_time, recovered_time, provider_type, media_size_bytes, media_type, file_state, provider_endpoint, recording, orphan_status, self_uri].hash
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
