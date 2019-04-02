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
  # Shift in a work plan
  class WorkPlanShift
    # Name of the shift
    attr_accessor :name

    # Days of the week applicable for this shift
    attr_accessor :days

    # Whether the start time of the shift is flexible
    attr_accessor :flexible_start_time

    # Exact start time of the shift defined as offset minutes from midnight. Used if flexibleStartTime == false
    attr_accessor :exact_start_time_minutes_from_midnight

    # Earliest start time of the shift defined as offset minutes from midnight. Used if flexibleStartTime == true
    attr_accessor :earliest_start_time_minutes_from_midnight

    # Latest start time of the shift defined as offset minutes from midnight. Used if flexibleStartTime == true
    attr_accessor :latest_start_time_minutes_from_midnight

    # Whether the latest stop time constraint for the shift is enabled
    attr_accessor :constrain_stop_time

    # Latest stop time of the shift defined as offset minutes from midnight. Used if constrainStopTime == true
    attr_accessor :latest_stop_time_minutes_from_midnight

    # Increment in offset minutes that would contribute to different possible start times for the shift. Used if flexibleStartTime == true
    attr_accessor :start_increment_minutes

    # Whether the paid time setting for the shift is flexible
    attr_accessor :flexible_paid_time

    # Exact paid time in minutes configured for the shift. Used if flexiblePaidTime == false
    attr_accessor :exact_paid_time_minutes

    # Minimum paid time in minutes configured for the shift. Used if flexiblePaidTime == true
    attr_accessor :minimum_paid_time_minutes

    # Maximum paid time in minutes configured for the shift. Used if flexiblePaidTime == true
    attr_accessor :maximum_paid_time_minutes

    # Whether the contiguous time constraint for the shift is enabled
    attr_accessor :constrain_contiguous_work_time

    # Minimum contiguous time in minutes configured for the shift. Used if constrainContiguousWorkTime == true
    attr_accessor :minimum_contiguous_work_time_minutes

    # Maximum contiguous time in minutes configured for the shift. Used if constrainContiguousWorkTime == true
    attr_accessor :maximum_contiguous_work_time_minutes

    # Activities configured for this shift
    attr_accessor :activities

    # ID of the shift. This is required only for the case of updating an existing shift
    attr_accessor :id

    # If marked true for updating an existing shift, the shift will be permanently deleted
    attr_accessor :delete

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'name' => :'name',
        
        :'days' => :'days',
        
        :'flexible_start_time' => :'flexibleStartTime',
        
        :'exact_start_time_minutes_from_midnight' => :'exactStartTimeMinutesFromMidnight',
        
        :'earliest_start_time_minutes_from_midnight' => :'earliestStartTimeMinutesFromMidnight',
        
        :'latest_start_time_minutes_from_midnight' => :'latestStartTimeMinutesFromMidnight',
        
        :'constrain_stop_time' => :'constrainStopTime',
        
        :'latest_stop_time_minutes_from_midnight' => :'latestStopTimeMinutesFromMidnight',
        
        :'start_increment_minutes' => :'startIncrementMinutes',
        
        :'flexible_paid_time' => :'flexiblePaidTime',
        
        :'exact_paid_time_minutes' => :'exactPaidTimeMinutes',
        
        :'minimum_paid_time_minutes' => :'minimumPaidTimeMinutes',
        
        :'maximum_paid_time_minutes' => :'maximumPaidTimeMinutes',
        
        :'constrain_contiguous_work_time' => :'constrainContiguousWorkTime',
        
        :'minimum_contiguous_work_time_minutes' => :'minimumContiguousWorkTimeMinutes',
        
        :'maximum_contiguous_work_time_minutes' => :'maximumContiguousWorkTimeMinutes',
        
        :'activities' => :'activities',
        
        :'id' => :'id',
        
        :'delete' => :'delete'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'name' => :'String',
        
        :'days' => :'SetWrapperDayOfWeek',
        
        :'flexible_start_time' => :'BOOLEAN',
        
        :'exact_start_time_minutes_from_midnight' => :'Integer',
        
        :'earliest_start_time_minutes_from_midnight' => :'Integer',
        
        :'latest_start_time_minutes_from_midnight' => :'Integer',
        
        :'constrain_stop_time' => :'BOOLEAN',
        
        :'latest_stop_time_minutes_from_midnight' => :'Integer',
        
        :'start_increment_minutes' => :'Integer',
        
        :'flexible_paid_time' => :'BOOLEAN',
        
        :'exact_paid_time_minutes' => :'Integer',
        
        :'minimum_paid_time_minutes' => :'Integer',
        
        :'maximum_paid_time_minutes' => :'Integer',
        
        :'constrain_contiguous_work_time' => :'BOOLEAN',
        
        :'minimum_contiguous_work_time_minutes' => :'Integer',
        
        :'maximum_contiguous_work_time_minutes' => :'Integer',
        
        :'activities' => :'Array<WorkPlanActivity>',
        
        :'id' => :'String',
        
        :'delete' => :'BOOLEAN'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'name')
        
        
        self.name = attributes[:'name']
        
      
      end

      
      if attributes.has_key?(:'days')
        
        
        self.days = attributes[:'days']
        
      
      end

      
      if attributes.has_key?(:'flexibleStartTime')
        
        
        self.flexible_start_time = attributes[:'flexibleStartTime']
        
      
      end

      
      if attributes.has_key?(:'exactStartTimeMinutesFromMidnight')
        
        
        self.exact_start_time_minutes_from_midnight = attributes[:'exactStartTimeMinutesFromMidnight']
        
      
      end

      
      if attributes.has_key?(:'earliestStartTimeMinutesFromMidnight')
        
        
        self.earliest_start_time_minutes_from_midnight = attributes[:'earliestStartTimeMinutesFromMidnight']
        
      
      end

      
      if attributes.has_key?(:'latestStartTimeMinutesFromMidnight')
        
        
        self.latest_start_time_minutes_from_midnight = attributes[:'latestStartTimeMinutesFromMidnight']
        
      
      end

      
      if attributes.has_key?(:'constrainStopTime')
        
        
        self.constrain_stop_time = attributes[:'constrainStopTime']
        
      
      end

      
      if attributes.has_key?(:'latestStopTimeMinutesFromMidnight')
        
        
        self.latest_stop_time_minutes_from_midnight = attributes[:'latestStopTimeMinutesFromMidnight']
        
      
      end

      
      if attributes.has_key?(:'startIncrementMinutes')
        
        
        self.start_increment_minutes = attributes[:'startIncrementMinutes']
        
      
      end

      
      if attributes.has_key?(:'flexiblePaidTime')
        
        
        self.flexible_paid_time = attributes[:'flexiblePaidTime']
        
      
      end

      
      if attributes.has_key?(:'exactPaidTimeMinutes')
        
        
        self.exact_paid_time_minutes = attributes[:'exactPaidTimeMinutes']
        
      
      end

      
      if attributes.has_key?(:'minimumPaidTimeMinutes')
        
        
        self.minimum_paid_time_minutes = attributes[:'minimumPaidTimeMinutes']
        
      
      end

      
      if attributes.has_key?(:'maximumPaidTimeMinutes')
        
        
        self.maximum_paid_time_minutes = attributes[:'maximumPaidTimeMinutes']
        
      
      end

      
      if attributes.has_key?(:'constrainContiguousWorkTime')
        
        
        self.constrain_contiguous_work_time = attributes[:'constrainContiguousWorkTime']
        
      
      end

      
      if attributes.has_key?(:'minimumContiguousWorkTimeMinutes')
        
        
        self.minimum_contiguous_work_time_minutes = attributes[:'minimumContiguousWorkTimeMinutes']
        
      
      end

      
      if attributes.has_key?(:'maximumContiguousWorkTimeMinutes')
        
        
        self.maximum_contiguous_work_time_minutes = attributes[:'maximumContiguousWorkTimeMinutes']
        
      
      end

      
      if attributes.has_key?(:'activities')
        
        if (value = attributes[:'activities']).is_a?(Array)
          self.activities = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'id')
        
        
        self.id = attributes[:'id']
        
      
      end

      
      if attributes.has_key?(:'delete')
        
        
        self.delete = attributes[:'delete']
        
      
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

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          days == o.days &&
          flexible_start_time == o.flexible_start_time &&
          exact_start_time_minutes_from_midnight == o.exact_start_time_minutes_from_midnight &&
          earliest_start_time_minutes_from_midnight == o.earliest_start_time_minutes_from_midnight &&
          latest_start_time_minutes_from_midnight == o.latest_start_time_minutes_from_midnight &&
          constrain_stop_time == o.constrain_stop_time &&
          latest_stop_time_minutes_from_midnight == o.latest_stop_time_minutes_from_midnight &&
          start_increment_minutes == o.start_increment_minutes &&
          flexible_paid_time == o.flexible_paid_time &&
          exact_paid_time_minutes == o.exact_paid_time_minutes &&
          minimum_paid_time_minutes == o.minimum_paid_time_minutes &&
          maximum_paid_time_minutes == o.maximum_paid_time_minutes &&
          constrain_contiguous_work_time == o.constrain_contiguous_work_time &&
          minimum_contiguous_work_time_minutes == o.minimum_contiguous_work_time_minutes &&
          maximum_contiguous_work_time_minutes == o.maximum_contiguous_work_time_minutes &&
          activities == o.activities &&
          id == o.id &&
          delete == o.delete
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, days, flexible_start_time, exact_start_time_minutes_from_midnight, earliest_start_time_minutes_from_midnight, latest_start_time_minutes_from_midnight, constrain_stop_time, latest_stop_time_minutes_from_midnight, start_increment_minutes, flexible_paid_time, exact_paid_time_minutes, minimum_paid_time_minutes, maximum_paid_time_minutes, constrain_contiguous_work_time, minimum_contiguous_work_time_minutes, maximum_contiguous_work_time_minutes, activities, id, delete].hash
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
