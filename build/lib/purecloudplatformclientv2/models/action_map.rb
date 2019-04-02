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
  class ActionMap
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    # The version of the action map.
    attr_accessor :version

    # Whether the action map is active.
    attr_accessor :is_active

    # Display name of the action map.
    attr_accessor :display_name

    # Trigger action map if any segment in the list is assigned to a given customer.
    attr_accessor :trigger_with_segments

    # List of event conditions that must be satisfied to trigger the action map.
    attr_accessor :trigger_with_event_conditions

    # Probability conditions for outcomes that must be satisfied to trigger the action map.
    attr_accessor :trigger_with_outcome_probability_conditions

    # URL conditions that a page must match for web actions to be displayable.
    attr_accessor :page_url_conditions

    # Type of activation.
    attr_accessor :activation

    # Weight of the action map with higher number denoting higher weight.
    attr_accessor :weight

    # The action that will be executed if this action map is triggered.
    attr_accessor :action

    # The estimated wait time limit above which actions will not be offered.
    attr_accessor :estimated_wait_time_limit

    # The URI for this object
    attr_accessor :self_uri

    # Timestamp indicating when the action map was created. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :created_date

    # Timestamp indicating when the action map was last updated. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :modified_date

    # Timestamp at which the action map is scheduled to start firing. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :start_date

    # Timestamp at which the action map is scheduled to stop firing. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :end_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'version' => :'version',
        
        :'is_active' => :'isActive',
        
        :'display_name' => :'displayName',
        
        :'trigger_with_segments' => :'triggerWithSegments',
        
        :'trigger_with_event_conditions' => :'triggerWithEventConditions',
        
        :'trigger_with_outcome_probability_conditions' => :'triggerWithOutcomeProbabilityConditions',
        
        :'page_url_conditions' => :'pageUrlConditions',
        
        :'activation' => :'activation',
        
        :'weight' => :'weight',
        
        :'action' => :'action',
        
        :'estimated_wait_time_limit' => :'estimatedWaitTimeLimit',
        
        :'self_uri' => :'selfUri',
        
        :'created_date' => :'createdDate',
        
        :'modified_date' => :'modifiedDate',
        
        :'start_date' => :'startDate',
        
        :'end_date' => :'endDate'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'version' => :'Integer',
        
        :'is_active' => :'BOOLEAN',
        
        :'display_name' => :'String',
        
        :'trigger_with_segments' => :'Array<String>',
        
        :'trigger_with_event_conditions' => :'Array<EventCondition>',
        
        :'trigger_with_outcome_probability_conditions' => :'Array<OutcomeProbabilityCondition>',
        
        :'page_url_conditions' => :'Array<UrlCondition>',
        
        :'activation' => :'Activation',
        
        :'weight' => :'Integer',
        
        :'action' => :'ActionMapAction',
        
        :'estimated_wait_time_limit' => :'Integer',
        
        :'self_uri' => :'String',
        
        :'created_date' => :'DateTime',
        
        :'modified_date' => :'DateTime',
        
        :'start_date' => :'DateTime',
        
        :'end_date' => :'DateTime'
        
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

      
      if attributes.has_key?(:'isActive')
        
        
        self.is_active = attributes[:'isActive']
        
      
      end

      
      if attributes.has_key?(:'displayName')
        
        
        self.display_name = attributes[:'displayName']
        
      
      end

      
      if attributes.has_key?(:'triggerWithSegments')
        
        if (value = attributes[:'triggerWithSegments']).is_a?(Array)
          self.trigger_with_segments = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'triggerWithEventConditions')
        
        if (value = attributes[:'triggerWithEventConditions']).is_a?(Array)
          self.trigger_with_event_conditions = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'triggerWithOutcomeProbabilityConditions')
        
        if (value = attributes[:'triggerWithOutcomeProbabilityConditions']).is_a?(Array)
          self.trigger_with_outcome_probability_conditions = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'pageUrlConditions')
        
        if (value = attributes[:'pageUrlConditions']).is_a?(Array)
          self.page_url_conditions = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'activation')
        
        
        self.activation = attributes[:'activation']
        
      
      end

      
      if attributes.has_key?(:'weight')
        
        
        self.weight = attributes[:'weight']
        
      
      end

      
      if attributes.has_key?(:'action')
        
        
        self.action = attributes[:'action']
        
      
      end

      
      if attributes.has_key?(:'estimatedWaitTimeLimit')
        
        
        self.estimated_wait_time_limit = attributes[:'estimatedWaitTimeLimit']
        
      
      end

      
      if attributes.has_key?(:'selfUri')
        
        
        self.self_uri = attributes[:'selfUri']
        
      
      end

      
      if attributes.has_key?(:'createdDate')
        
        
        self.created_date = attributes[:'createdDate']
        
      
      end

      
      if attributes.has_key?(:'modifiedDate')
        
        
        self.modified_date = attributes[:'modifiedDate']
        
      
      end

      
      if attributes.has_key?(:'startDate')
        
        
        self.start_date = attributes[:'startDate']
        
      
      end

      
      if attributes.has_key?(:'endDate')
        
        
        self.end_date = attributes[:'endDate']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @display_name.nil?
        return false
      end

      
      
      
      
      
      if @trigger_with_segments.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      if @page_url_conditions.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          version == o.version &&
          is_active == o.is_active &&
          display_name == o.display_name &&
          trigger_with_segments == o.trigger_with_segments &&
          trigger_with_event_conditions == o.trigger_with_event_conditions &&
          trigger_with_outcome_probability_conditions == o.trigger_with_outcome_probability_conditions &&
          page_url_conditions == o.page_url_conditions &&
          activation == o.activation &&
          weight == o.weight &&
          action == o.action &&
          estimated_wait_time_limit == o.estimated_wait_time_limit &&
          self_uri == o.self_uri &&
          created_date == o.created_date &&
          modified_date == o.modified_date &&
          start_date == o.start_date &&
          end_date == o.end_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, version, is_active, display_name, trigger_with_segments, trigger_with_event_conditions, trigger_with_outcome_probability_conditions, page_url_conditions, activation, weight, action, estimated_wait_time_limit, self_uri, created_date, modified_date, start_date, end_date].hash
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
