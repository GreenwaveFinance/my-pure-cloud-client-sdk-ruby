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
  # A modification to a short term forecast
  class WfmForecastModification
    # The type of the modification
    attr_accessor :type

    # The number of 15 minute intervals past referenceStartDate representing the first interval to which to apply this modification. Must be null if values is populated
    attr_accessor :start_interval_index

    # The number of 15 minute intervals past referenceStartDate representing the last interval to which to apply this modification.  Must be null if values is populated
    attr_accessor :end_interval_index

    # The metric to which this modification applies
    attr_accessor :metric

    # The value of the modification.  Must be null if \"values\" is populated
    attr_accessor :value

    # The list of values to update.  Only applicable for grid-type modifications. Must be null if \"value\" is populated
    attr_accessor :values

    # Whether the modification is enabled for the forecast
    attr_accessor :enabled

    # The attributes defining how this modification applies to the forecast
    attr_accessor :attributes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'type' => :'type',
        
        :'start_interval_index' => :'startIntervalIndex',
        
        :'end_interval_index' => :'endIntervalIndex',
        
        :'metric' => :'metric',
        
        :'value' => :'value',
        
        :'values' => :'values',
        
        :'enabled' => :'enabled',
        
        :'attributes' => :'attributes'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'type' => :'String',
        
        :'start_interval_index' => :'Integer',
        
        :'end_interval_index' => :'Integer',
        
        :'metric' => :'String',
        
        :'value' => :'Float',
        
        :'values' => :'Array<WfmForecastModificationIntervalOffsetValue>',
        
        :'enabled' => :'BOOLEAN',
        
        :'attributes' => :'WfmForecastModificationAttributes'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'type')
        
        
        self.type = attributes[:'type']
        
      
      end

      
      if attributes.has_key?(:'startIntervalIndex')
        
        
        self.start_interval_index = attributes[:'startIntervalIndex']
        
      
      end

      
      if attributes.has_key?(:'endIntervalIndex')
        
        
        self.end_interval_index = attributes[:'endIntervalIndex']
        
      
      end

      
      if attributes.has_key?(:'metric')
        
        
        self.metric = attributes[:'metric']
        
      
      end

      
      if attributes.has_key?(:'value')
        
        
        self.value = attributes[:'value']
        
      
      end

      
      if attributes.has_key?(:'values')
        
        if (value = attributes[:'values']).is_a?(Array)
          self.values = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'enabled')
        
        
        self.enabled = attributes[:'enabled']
        
      
      end

      
      if attributes.has_key?(:'attributes')
        
        
        self.attributes = attributes[:'attributes']
        
      
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
      
      
      if @type.nil?
        return false
      end

      
      
      allowed_values = ["MinimumPerInterval", "MaximumPerInterval", "SetValuePerInterval", "ChangeValuePerInterval", "ChangePercentPerInterval", "SetValueOverRange", "ChangeValueOverRange", "SetValuesForIntervalSet"]
      if @type && !allowed_values.include?(@type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      if @metric.nil?
        return false
      end

      
      
      allowed_values = ["Offered", "AverageTalkTimeSeconds", "AverageAfterCallWorkTimeSeconds", "AverageHandleTimeSeconds"]
      if @metric && !allowed_values.include?(@metric)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      if @enabled.nil?
        return false
      end

      
      
      
      
      
      if @attributes.nil?
        return false
      end

      
      
      
      
    end

    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      allowed_values = ["MinimumPerInterval", "MaximumPerInterval", "SetValuePerInterval", "ChangeValuePerInterval", "ChangePercentPerInterval", "SetValueOverRange", "ChangeValueOverRange", "SetValuesForIntervalSet"]
      if type && !allowed_values.include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{allowed_values}."
      end
      @type = type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metric Object to be assigned
    def metric=(metric)
      allowed_values = ["Offered", "AverageTalkTimeSeconds", "AverageAfterCallWorkTimeSeconds", "AverageHandleTimeSeconds"]
      if metric && !allowed_values.include?(metric)
        fail ArgumentError, "invalid value for 'metric', must be one of #{allowed_values}."
      end
      @metric = metric
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          start_interval_index == o.start_interval_index &&
          end_interval_index == o.end_interval_index &&
          metric == o.metric &&
          value == o.value &&
          values == o.values &&
          enabled == o.enabled &&
          attributes == o.attributes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, start_interval_index, end_interval_index, metric, value, values, enabled, attributes].hash
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
