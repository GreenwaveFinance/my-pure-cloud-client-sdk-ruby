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
  class RoutingStatusRule
    # The globally unique identifier for the object.
    attr_accessor :id

    # Name of the rule
    attr_accessor :name

    # The agent whose routing status will be watched.
    attr_accessor :agent

    # The routing status on which to alert.
    attr_accessor :routing_status

    # The number of seconds to wait before alerting based upon the agent's routing status.
    attr_accessor :routing_limit_in_seconds

    # Indicates if the rule is enabled.
    attr_accessor :enabled

    # Indicates if the rule is in alarm state.
    attr_accessor :in_alarm

    # The ids of users who will be notified of alarm state change.
    attr_accessor :notification_users

    # A collection of notification methods.
    attr_accessor :alert_types

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'agent' => :'agent',
        
        :'routing_status' => :'routingStatus',
        
        :'routing_limit_in_seconds' => :'routingLimitInSeconds',
        
        :'enabled' => :'enabled',
        
        :'in_alarm' => :'inAlarm',
        
        :'notification_users' => :'notificationUsers',
        
        :'alert_types' => :'alertTypes',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'agent' => :'User',
        
        :'routing_status' => :'String',
        
        :'routing_limit_in_seconds' => :'Integer',
        
        :'enabled' => :'BOOLEAN',
        
        :'in_alarm' => :'BOOLEAN',
        
        :'notification_users' => :'Array<User>',
        
        :'alert_types' => :'Array<String>',
        
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

      
      if attributes.has_key?(:'agent')
        
        
        self.agent = attributes[:'agent']
        
      
      end

      
      if attributes.has_key?(:'routingStatus')
        
        
        self.routing_status = attributes[:'routingStatus']
        
      
      end

      
      if attributes.has_key?(:'routingLimitInSeconds')
        
        
        self.routing_limit_in_seconds = attributes[:'routingLimitInSeconds']
        
      
      end

      
      if attributes.has_key?(:'enabled')
        
        
        self.enabled = attributes[:'enabled']
        
      
      end

      
      if attributes.has_key?(:'inAlarm')
        
        
        self.in_alarm = attributes[:'inAlarm']
        
      
      end

      
      if attributes.has_key?(:'notificationUsers')
        
        if (value = attributes[:'notificationUsers']).is_a?(Array)
          self.notification_users = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'alertTypes')
        
        if (value = attributes[:'alertTypes']).is_a?(Array)
          self.alert_types = value
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
      
      
      
      
      
      
      if @name.nil?
        return false
      end

      
      
      
      
      
      if @agent.nil?
        return false
      end

      
      
      
      
      
      if @routing_status.nil?
        return false
      end

      
      
      allowed_values = ["OFF_QUEUE", "IDLE", "INTERACTING", "NOT_RESPONDING", "COMMUNICATING"]
      if @routing_status && !allowed_values.include?(@routing_status)
        return false
      end
      
      
      
      
      if @routing_limit_in_seconds.nil?
        return false
      end

      
      
      
      
      
      if @enabled.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      if @notification_users.nil?
        return false
      end

      
      
      
      
      
      if @alert_types.nil?
        return false
      end

      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_status Object to be assigned
    def routing_status=(routing_status)
      allowed_values = ["OFF_QUEUE", "IDLE", "INTERACTING", "NOT_RESPONDING", "COMMUNICATING"]
      if routing_status && !allowed_values.include?(routing_status)
        fail ArgumentError, "invalid value for 'routing_status', must be one of #{allowed_values}."
      end
      @routing_status = routing_status
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          agent == o.agent &&
          routing_status == o.routing_status &&
          routing_limit_in_seconds == o.routing_limit_in_seconds &&
          enabled == o.enabled &&
          in_alarm == o.in_alarm &&
          notification_users == o.notification_users &&
          alert_types == o.alert_types &&
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
      [id, name, agent, routing_status, routing_limit_in_seconds, enabled, in_alarm, notification_users, alert_types, self_uri].hash
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
