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
  # Information containing details of a schedule run
  class SchedulingRunResponse
    # ID of the schedule run
    attr_accessor :run_id

    # Status of the schedule run
    attr_accessor :state

    # Completion percentage of the schedule run
    attr_accessor :percent_complete

    # The start date of the week for which the scheduling is done in yyyy-MM-dd format
    attr_accessor :target_week

    # ID of the schedule
    attr_accessor :schedule_id

    # Description of the schedule run
    attr_accessor :schedule_description

    # Start time of the schedule run. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :scheduling_start_time

    # User that started the schedule run
    attr_accessor :scheduling_started_by

    # User that canceled the schedule run
    attr_accessor :scheduling_canceled_by

    # Time at which the scheduling run was completed. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :scheduling_completed_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'run_id' => :'runId',
        
        :'state' => :'state',
        
        :'percent_complete' => :'percentComplete',
        
        :'target_week' => :'targetWeek',
        
        :'schedule_id' => :'scheduleId',
        
        :'schedule_description' => :'scheduleDescription',
        
        :'scheduling_start_time' => :'schedulingStartTime',
        
        :'scheduling_started_by' => :'schedulingStartedBy',
        
        :'scheduling_canceled_by' => :'schedulingCanceledBy',
        
        :'scheduling_completed_time' => :'schedulingCompletedTime'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'run_id' => :'String',
        
        :'state' => :'String',
        
        :'percent_complete' => :'Float',
        
        :'target_week' => :'String',
        
        :'schedule_id' => :'String',
        
        :'schedule_description' => :'String',
        
        :'scheduling_start_time' => :'DateTime',
        
        :'scheduling_started_by' => :'UserReference',
        
        :'scheduling_canceled_by' => :'UserReference',
        
        :'scheduling_completed_time' => :'DateTime'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'runId')
        
        
        self.run_id = attributes[:'runId']
        
      
      end

      
      if attributes.has_key?(:'state')
        
        
        self.state = attributes[:'state']
        
      
      end

      
      if attributes.has_key?(:'percentComplete')
        
        
        self.percent_complete = attributes[:'percentComplete']
        
      
      end

      
      if attributes.has_key?(:'targetWeek')
        
        
        self.target_week = attributes[:'targetWeek']
        
      
      end

      
      if attributes.has_key?(:'scheduleId')
        
        
        self.schedule_id = attributes[:'scheduleId']
        
      
      end

      
      if attributes.has_key?(:'scheduleDescription')
        
        
        self.schedule_description = attributes[:'scheduleDescription']
        
      
      end

      
      if attributes.has_key?(:'schedulingStartTime')
        
        
        self.scheduling_start_time = attributes[:'schedulingStartTime']
        
      
      end

      
      if attributes.has_key?(:'schedulingStartedBy')
        
        
        self.scheduling_started_by = attributes[:'schedulingStartedBy']
        
      
      end

      
      if attributes.has_key?(:'schedulingCanceledBy')
        
        
        self.scheduling_canceled_by = attributes[:'schedulingCanceledBy']
        
      
      end

      
      if attributes.has_key?(:'schedulingCompletedTime')
        
        
        self.scheduling_completed_time = attributes[:'schedulingCompletedTime']
        
      
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
      
      
      
      
      
      
      
      allowed_values = ["None", "Queued", "Scheduling", "Canceled", "Failed", "Complete"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["None", "Queued", "Scheduling", "Canceled", "Failed", "Complete"]
      if state && !allowed_values.include?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{allowed_values}."
      end
      @state = state
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          run_id == o.run_id &&
          state == o.state &&
          percent_complete == o.percent_complete &&
          target_week == o.target_week &&
          schedule_id == o.schedule_id &&
          schedule_description == o.schedule_description &&
          scheduling_start_time == o.scheduling_start_time &&
          scheduling_started_by == o.scheduling_started_by &&
          scheduling_canceled_by == o.scheduling_canceled_by &&
          scheduling_completed_time == o.scheduling_completed_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [run_id, state, percent_complete, target_week, schedule_id, schedule_description, scheduling_start_time, scheduling_started_by, scheduling_canceled_by, scheduling_completed_time].hash
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