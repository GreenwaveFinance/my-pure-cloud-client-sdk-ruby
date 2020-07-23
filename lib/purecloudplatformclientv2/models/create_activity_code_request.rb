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
  # Activity Code
  class CreateActivityCodeRequest
    # The name of the activity code
    attr_accessor :name

    # The activity code's category
    attr_accessor :category

    # The default length of the activity in minutes
    attr_accessor :length_in_minutes

    # Whether an agent is paid while performing this activity
    attr_accessor :counts_as_paid_time

    # Indicates whether or not the activity should be counted as work time
    attr_accessor :counts_as_work_time

    # Whether an agent can select this activity code when creating or editing a time off request
    attr_accessor :agent_time_off_selectable

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'name' => :'name',
        
        :'category' => :'category',
        
        :'length_in_minutes' => :'lengthInMinutes',
        
        :'counts_as_paid_time' => :'countsAsPaidTime',
        
        :'counts_as_work_time' => :'countsAsWorkTime',
        
        :'agent_time_off_selectable' => :'agentTimeOffSelectable'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'name' => :'String',
        
        :'category' => :'String',
        
        :'length_in_minutes' => :'Integer',
        
        :'counts_as_paid_time' => :'BOOLEAN',
        
        :'counts_as_work_time' => :'BOOLEAN',
        
        :'agent_time_off_selectable' => :'BOOLEAN'
        
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

      
      if attributes.has_key?(:'category')
        
        
        self.category = attributes[:'category']
        
      
      end

      
      if attributes.has_key?(:'lengthInMinutes')
        
        
        self.length_in_minutes = attributes[:'lengthInMinutes']
        
      
      end

      
      if attributes.has_key?(:'countsAsPaidTime')
        
        
        self.counts_as_paid_time = attributes[:'countsAsPaidTime']
        
      
      end

      
      if attributes.has_key?(:'countsAsWorkTime')
        
        
        self.counts_as_work_time = attributes[:'countsAsWorkTime']
        
      
      end

      
      if attributes.has_key?(:'agentTimeOffSelectable')
        
        
        self.agent_time_off_selectable = attributes[:'agentTimeOffSelectable']
        
      
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

      
      
      
      
      
      if @category.nil?
        return false
      end

      
      
      allowed_values = ["OnQueueWork", "Break", "Meal", "Meeting", "OffQueueWork", "TimeOff", "Training", "Unavailable", "Unscheduled"]
      if @category && !allowed_values.include?(@category)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category)
      allowed_values = ["OnQueueWork", "Break", "Meal", "Meeting", "OffQueueWork", "TimeOff", "Training", "Unavailable", "Unscheduled"]
      if category && !allowed_values.include?(category)
        fail ArgumentError, "invalid value for 'category', must be one of #{allowed_values}."
      end
      @category = category
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          category == o.category &&
          length_in_minutes == o.length_in_minutes &&
          counts_as_paid_time == o.counts_as_paid_time &&
          counts_as_work_time == o.counts_as_work_time &&
          agent_time_off_selectable == o.agent_time_off_selectable
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, category, length_in_minutes, counts_as_paid_time, counts_as_work_time, agent_time_off_selectable].hash
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