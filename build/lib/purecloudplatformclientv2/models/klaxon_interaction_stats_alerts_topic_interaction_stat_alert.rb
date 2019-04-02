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
  class KlaxonInteractionStatsAlertsTopicInteractionStatAlert
    attr_accessor :id

    attr_accessor :name

    attr_accessor :rule_id

    attr_accessor :dimension

    attr_accessor :dimension_value

    attr_accessor :dimension_value_name

    attr_accessor :metric

    attr_accessor :media_type

    attr_accessor :numeric_range

    attr_accessor :statistic

    attr_accessor :value

    attr_accessor :unread

    attr_accessor :start_date

    attr_accessor :end_date

    attr_accessor :notification_users

    attr_accessor :alert_types

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'rule_id' => :'ruleId',
        
        :'dimension' => :'dimension',
        
        :'dimension_value' => :'dimensionValue',
        
        :'dimension_value_name' => :'dimensionValueName',
        
        :'metric' => :'metric',
        
        :'media_type' => :'mediaType',
        
        :'numeric_range' => :'numericRange',
        
        :'statistic' => :'statistic',
        
        :'value' => :'value',
        
        :'unread' => :'unread',
        
        :'start_date' => :'startDate',
        
        :'end_date' => :'endDate',
        
        :'notification_users' => :'notificationUsers',
        
        :'alert_types' => :'alertTypes'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'rule_id' => :'String',
        
        :'dimension' => :'String',
        
        :'dimension_value' => :'String',
        
        :'dimension_value_name' => :'String',
        
        :'metric' => :'String',
        
        :'media_type' => :'String',
        
        :'numeric_range' => :'String',
        
        :'statistic' => :'String',
        
        :'value' => :'Float',
        
        :'unread' => :'BOOLEAN',
        
        :'start_date' => :'DateTime',
        
        :'end_date' => :'DateTime',
        
        :'notification_users' => :'Array<KlaxonInteractionStatsAlertsTopicNotificationUser>',
        
        :'alert_types' => :'Array<String>'
        
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

      
      if attributes.has_key?(:'ruleId')
        
        
        self.rule_id = attributes[:'ruleId']
        
      
      end

      
      if attributes.has_key?(:'dimension')
        
        
        self.dimension = attributes[:'dimension']
        
      
      end

      
      if attributes.has_key?(:'dimensionValue')
        
        
        self.dimension_value = attributes[:'dimensionValue']
        
      
      end

      
      if attributes.has_key?(:'dimensionValueName')
        
        
        self.dimension_value_name = attributes[:'dimensionValueName']
        
      
      end

      
      if attributes.has_key?(:'metric')
        
        
        self.metric = attributes[:'metric']
        
      
      end

      
      if attributes.has_key?(:'mediaType')
        
        
        self.media_type = attributes[:'mediaType']
        
      
      end

      
      if attributes.has_key?(:'numericRange')
        
        
        self.numeric_range = attributes[:'numericRange']
        
      
      end

      
      if attributes.has_key?(:'statistic')
        
        
        self.statistic = attributes[:'statistic']
        
      
      end

      
      if attributes.has_key?(:'value')
        
        
        self.value = attributes[:'value']
        
      
      end

      
      if attributes.has_key?(:'unread')
        
        
        self.unread = attributes[:'unread']
        
      
      end

      
      if attributes.has_key?(:'startDate')
        
        
        self.start_date = attributes[:'startDate']
        
      
      end

      
      if attributes.has_key?(:'endDate')
        
        
        self.end_date = attributes[:'endDate']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["queueId", "userId"]
      if @dimension && !allowed_values.include?(@dimension)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["tAbandon", "tAnswered", "tTalk", "nOffered", "tHandle", "nTransferred", "oServiceLevel", "tWait", "tHeld", "tAcw"]
      if @metric && !allowed_values.include?(@metric)
        return false
      end
      
      
      
      
      
      allowed_values = ["voice", "chat", "email", "callback", "message"]
      if @media_type && !allowed_values.include?(@media_type)
        return false
      end
      
      
      
      
      
      allowed_values = ["gt", "gte", "lt", "lte", "eq", "ne"]
      if @numeric_range && !allowed_values.include?(@numeric_range)
        return false
      end
      
      
      
      
      
      allowed_values = ["count", "min", "ratio", "max"]
      if @statistic && !allowed_values.include?(@statistic)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dimension Object to be assigned
    def dimension=(dimension)
      allowed_values = ["queueId", "userId"]
      if dimension && !allowed_values.include?(dimension)
        fail ArgumentError, "invalid value for 'dimension', must be one of #{allowed_values}."
      end
      @dimension = dimension
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metric Object to be assigned
    def metric=(metric)
      allowed_values = ["tAbandon", "tAnswered", "tTalk", "nOffered", "tHandle", "nTransferred", "oServiceLevel", "tWait", "tHeld", "tAcw"]
      if metric && !allowed_values.include?(metric)
        fail ArgumentError, "invalid value for 'metric', must be one of #{allowed_values}."
      end
      @metric = metric
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] media_type Object to be assigned
    def media_type=(media_type)
      allowed_values = ["voice", "chat", "email", "callback", "message"]
      if media_type && !allowed_values.include?(media_type)
        fail ArgumentError, "invalid value for 'media_type', must be one of #{allowed_values}."
      end
      @media_type = media_type
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] numeric_range Object to be assigned
    def numeric_range=(numeric_range)
      allowed_values = ["gt", "gte", "lt", "lte", "eq", "ne"]
      if numeric_range && !allowed_values.include?(numeric_range)
        fail ArgumentError, "invalid value for 'numeric_range', must be one of #{allowed_values}."
      end
      @numeric_range = numeric_range
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statistic Object to be assigned
    def statistic=(statistic)
      allowed_values = ["count", "min", "ratio", "max"]
      if statistic && !allowed_values.include?(statistic)
        fail ArgumentError, "invalid value for 'statistic', must be one of #{allowed_values}."
      end
      @statistic = statistic
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          rule_id == o.rule_id &&
          dimension == o.dimension &&
          dimension_value == o.dimension_value &&
          dimension_value_name == o.dimension_value_name &&
          metric == o.metric &&
          media_type == o.media_type &&
          numeric_range == o.numeric_range &&
          statistic == o.statistic &&
          value == o.value &&
          unread == o.unread &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          notification_users == o.notification_users &&
          alert_types == o.alert_types
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, rule_id, dimension, dimension_value, dimension_value_name, metric, media_type, numeric_range, statistic, value, unread, start_date, end_date, notification_users, alert_types].hash
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
