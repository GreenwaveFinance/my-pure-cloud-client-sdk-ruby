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
  class QueueConversationVideoEventTopicChat
    attr_accessor :state

    attr_accessor :id

    attr_accessor :provider

    attr_accessor :script_id

    attr_accessor :peer_id

    attr_accessor :room_id

    attr_accessor :held

    attr_accessor :disconnect_type

    attr_accessor :start_hold_time

    attr_accessor :connected_time

    attr_accessor :disconnected_time

    attr_accessor :journey_context

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'state' => :'state',
        
        :'id' => :'id',
        
        :'provider' => :'provider',
        
        :'script_id' => :'scriptId',
        
        :'peer_id' => :'peerId',
        
        :'room_id' => :'roomId',
        
        :'held' => :'held',
        
        :'disconnect_type' => :'disconnectType',
        
        :'start_hold_time' => :'startHoldTime',
        
        :'connected_time' => :'connectedTime',
        
        :'disconnected_time' => :'disconnectedTime',
        
        :'journey_context' => :'journeyContext',
        
        :'additional_properties' => :'additionalProperties'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'state' => :'String',
        
        :'id' => :'String',
        
        :'provider' => :'String',
        
        :'script_id' => :'String',
        
        :'peer_id' => :'String',
        
        :'room_id' => :'String',
        
        :'held' => :'BOOLEAN',
        
        :'disconnect_type' => :'String',
        
        :'start_hold_time' => :'DateTime',
        
        :'connected_time' => :'DateTime',
        
        :'disconnected_time' => :'DateTime',
        
        :'journey_context' => :'QueueConversationVideoEventTopicJourneyContext',
        
        :'additional_properties' => :'Object'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'state')
        
        
        self.state = attributes[:'state']
        
      
      end

      
      if attributes.has_key?(:'id')
        
        
        self.id = attributes[:'id']
        
      
      end

      
      if attributes.has_key?(:'provider')
        
        
        self.provider = attributes[:'provider']
        
      
      end

      
      if attributes.has_key?(:'scriptId')
        
        
        self.script_id = attributes[:'scriptId']
        
      
      end

      
      if attributes.has_key?(:'peerId')
        
        
        self.peer_id = attributes[:'peerId']
        
      
      end

      
      if attributes.has_key?(:'roomId')
        
        
        self.room_id = attributes[:'roomId']
        
      
      end

      
      if attributes.has_key?(:'held')
        
        
        self.held = attributes[:'held']
        
      
      end

      
      if attributes.has_key?(:'disconnectType')
        
        
        self.disconnect_type = attributes[:'disconnectType']
        
      
      end

      
      if attributes.has_key?(:'startHoldTime')
        
        
        self.start_hold_time = attributes[:'startHoldTime']
        
      
      end

      
      if attributes.has_key?(:'connectedTime')
        
        
        self.connected_time = attributes[:'connectedTime']
        
      
      end

      
      if attributes.has_key?(:'disconnectedTime')
        
        
        self.disconnected_time = attributes[:'disconnectedTime']
        
      
      end

      
      if attributes.has_key?(:'journeyContext')
        
        
        self.journey_context = attributes[:'journeyContext']
        
      
      end

      
      if attributes.has_key?(:'additionalProperties')
        
        
        self.additional_properties = attributes[:'additionalProperties']
        
      
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
      
      
      
      allowed_values = ["ALERTING", "DIALING", "CONTACTING", "OFFERING", "CONNECTED", "DISCONNECTED", "TERMINATED", "NONE"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["ENDPOINT", "CLIENT", "SYSTEM", "TIMEOUT", "TRANSFER", "TRANSFER_CONFERENCE", "TRANSFER_CONSULT", "TRANSFER_NOANSWER", "TRANSFER_NOTAVAILABLE", "TRANSFER_FORWARD", "TRANSPORT_FAILURE", "ERROR", "PEER", "OTHER", "SPAM", "UNCALLABLE"]
      if @disconnect_type && !allowed_values.include?(@disconnect_type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["ALERTING", "DIALING", "CONTACTING", "OFFERING", "CONNECTED", "DISCONNECTED", "TERMINATED", "NONE"]
      if state && !allowed_values.include?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{allowed_values}."
      end
      @state = state
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disconnect_type Object to be assigned
    def disconnect_type=(disconnect_type)
      allowed_values = ["ENDPOINT", "CLIENT", "SYSTEM", "TIMEOUT", "TRANSFER", "TRANSFER_CONFERENCE", "TRANSFER_CONSULT", "TRANSFER_NOANSWER", "TRANSFER_NOTAVAILABLE", "TRANSFER_FORWARD", "TRANSPORT_FAILURE", "ERROR", "PEER", "OTHER", "SPAM", "UNCALLABLE"]
      if disconnect_type && !allowed_values.include?(disconnect_type)
        fail ArgumentError, "invalid value for 'disconnect_type', must be one of #{allowed_values}."
      end
      @disconnect_type = disconnect_type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          state == o.state &&
          id == o.id &&
          provider == o.provider &&
          script_id == o.script_id &&
          peer_id == o.peer_id &&
          room_id == o.room_id &&
          held == o.held &&
          disconnect_type == o.disconnect_type &&
          start_hold_time == o.start_hold_time &&
          connected_time == o.connected_time &&
          disconnected_time == o.disconnected_time &&
          journey_context == o.journey_context &&
          additional_properties == o.additional_properties
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [state, id, provider, script_id, peer_id, room_id, held, disconnect_type, start_hold_time, connected_time, disconnected_time, journey_context, additional_properties].hash
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
