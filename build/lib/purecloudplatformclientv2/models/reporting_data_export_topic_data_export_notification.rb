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
  class ReportingDataExportTopicDataExportNotification
    attr_accessor :id

    attr_accessor :name

    attr_accessor :status

    attr_accessor :export_format

    attr_accessor :download_url

    attr_accessor :view_type

    attr_accessor :export_error_messages_type

    attr_accessor :read

    attr_accessor :created_date_time

    attr_accessor :modified_date_time

    attr_accessor :percentage_complete

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'status' => :'status',
        
        :'export_format' => :'exportFormat',
        
        :'download_url' => :'downloadUrl',
        
        :'view_type' => :'viewType',
        
        :'export_error_messages_type' => :'exportErrorMessagesType',
        
        :'read' => :'read',
        
        :'created_date_time' => :'createdDateTime',
        
        :'modified_date_time' => :'modifiedDateTime',
        
        :'percentage_complete' => :'percentageComplete'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'status' => :'String',
        
        :'export_format' => :'String',
        
        :'download_url' => :'String',
        
        :'view_type' => :'String',
        
        :'export_error_messages_type' => :'String',
        
        :'read' => :'BOOLEAN',
        
        :'created_date_time' => :'DateTime',
        
        :'modified_date_time' => :'DateTime',
        
        :'percentage_complete' => :'Float'
        
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

      
      if attributes.has_key?(:'status')
        
        
        self.status = attributes[:'status']
        
      
      end

      
      if attributes.has_key?(:'exportFormat')
        
        
        self.export_format = attributes[:'exportFormat']
        
      
      end

      
      if attributes.has_key?(:'downloadUrl')
        
        
        self.download_url = attributes[:'downloadUrl']
        
      
      end

      
      if attributes.has_key?(:'viewType')
        
        
        self.view_type = attributes[:'viewType']
        
      
      end

      
      if attributes.has_key?(:'exportErrorMessagesType')
        
        
        self.export_error_messages_type = attributes[:'exportErrorMessagesType']
        
      
      end

      
      if attributes.has_key?(:'read')
        
        
        self.read = attributes[:'read']
        
      
      end

      
      if attributes.has_key?(:'createdDateTime')
        
        
        self.created_date_time = attributes[:'createdDateTime']
        
      
      end

      
      if attributes.has_key?(:'modifiedDateTime')
        
        
        self.modified_date_time = attributes[:'modifiedDateTime']
        
      
      end

      
      if attributes.has_key?(:'percentageComplete')
        
        
        self.percentage_complete = attributes[:'percentageComplete']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["SUBMITTED", "RUNNING", "CANCELLING", "CANCELLED", "COMPLETED", "FAILED"]
      if @status && !allowed_values.include?(@status)
        return false
      end
      
      
      
      
      
      allowed_values = ["CSV"]
      if @export_format && !allowed_values.include?(@export_format)
        return false
      end
      
      
      
      
      
      
      
      
      
      allowed_values = ["QUEUE_PERFORMANCE_SUMMARY_VIEW", "QUEUE_PERFORMANCE_DETAIL_VIEW", "INTERACTION_SEARCH_VIEW", "AGENT_PERFORMANCE_SUMMARY_VIEW", "AGENT_PERFORMANCE_DETAIL_VIEW", "AGENT_STATUS_SUMMARY_VIEW", "AGENT_STATUS_DETAIL_VIEW", "AGENT_EVALUATION_SUMMARY_VIEW", "AGENT_EVALUATION_DETAIL_VIEW", "AGENT_QUEUE_DETAIL_VIEW", "AGENT_INTERACTION_DETAIL_VIEW", "ABANDON_INSIGHTS_VIEW", "SKILLS_PERFORMANCE_VIEW", "SURVEY_FORM_PERFORMANCE_SUMMARY_VIEW", "SURVEY_FORM_PERFORMANCE_DETAIL_VIEW", "DNIS_PERFORMANCE_SUMMARY_VIEW", "DNIS_PERFORMANCE_DETAIL_VIEW", "WRAP_UP_PERFORMANCE_SUMMARY_VIEW", "AGENT_WRAP_UP_PERFORMANCE_DETAIL_VIEW", "QUEUE_ACTIVITY_SUMMARY_VIEW", "QUEUE_ACTIVITY_DETAIL_VIEW", "AGENT_QUEUE_ACTIVITY_SUMMARY_VIEW", "QUEUE_AGENT_DETAIL_VIEW", "QUEUE_INTERACTION_DETAIL_VIEW", "AGENT_SCHEDULE_DETAIL_VIEW", "IVR_PERFORMANCE_SUMMARY_VIEW", "IVR_PERFORMANCE_DETAIL_VIEW", "ANSWER_INSIGHTS_VIEW", "HANDLE_INSIGHTS_VIEW", "TALK_INSIGHTS_VIEW", "HOLD_INSIGHTS_VIEW", "ACW_INSIGHTS_VIEW", "WAIT_INSIGHTS_VIEW", "AGENT_WRAP_UP_PERFORMANCE_INTERVAL_DETAIL_VIEW", "FLOW_OUTCOME_SUMMARY_VIEW", "FLOW_OUTCOME_PERFORMANCE_DETAIL_VIEW", "FLOW_OUTCOME_PERFORMANCE_INTERVAL_DETAIL_VIEW", "FLOW_DESTINATION_SUMMARY_VIEW", "FLOW_DESTINATION_DETAIL_VIEW"]
      if @view_type && !allowed_values.include?(@view_type)
        return false
      end
      
      
      
      
      
      allowed_values = ["FAILED_CONVERTING_EXPORT_JOB", "FAILED_NO_DATA_EXPORT_JOB_FOUND", "FAILED_GETTING_DATA_FROM_SERVICE", "FAILED_GENERATING_TEMP_FILE", "FAILED_SAVING_FILE_TO_S3", "FAILED_NOTIFYING_SKYWALKER_OF_DOWNLOAD", "FAILED_BUILDING_DOWNLOAD_URL_FROM_SKYWALKER_RESPONSE", "EXPORT_TYPE_NOT_IMPLEMENTED"]
      if @export_error_messages_type && !allowed_values.include?(@export_error_messages_type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      allowed_values = ["SUBMITTED", "RUNNING", "CANCELLING", "CANCELLED", "COMPLETED", "FAILED"]
      if status && !allowed_values.include?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{allowed_values}."
      end
      @status = status
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] export_format Object to be assigned
    def export_format=(export_format)
      allowed_values = ["CSV"]
      if export_format && !allowed_values.include?(export_format)
        fail ArgumentError, "invalid value for 'export_format', must be one of #{allowed_values}."
      end
      @export_format = export_format
    end

    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] view_type Object to be assigned
    def view_type=(view_type)
      allowed_values = ["QUEUE_PERFORMANCE_SUMMARY_VIEW", "QUEUE_PERFORMANCE_DETAIL_VIEW", "INTERACTION_SEARCH_VIEW", "AGENT_PERFORMANCE_SUMMARY_VIEW", "AGENT_PERFORMANCE_DETAIL_VIEW", "AGENT_STATUS_SUMMARY_VIEW", "AGENT_STATUS_DETAIL_VIEW", "AGENT_EVALUATION_SUMMARY_VIEW", "AGENT_EVALUATION_DETAIL_VIEW", "AGENT_QUEUE_DETAIL_VIEW", "AGENT_INTERACTION_DETAIL_VIEW", "ABANDON_INSIGHTS_VIEW", "SKILLS_PERFORMANCE_VIEW", "SURVEY_FORM_PERFORMANCE_SUMMARY_VIEW", "SURVEY_FORM_PERFORMANCE_DETAIL_VIEW", "DNIS_PERFORMANCE_SUMMARY_VIEW", "DNIS_PERFORMANCE_DETAIL_VIEW", "WRAP_UP_PERFORMANCE_SUMMARY_VIEW", "AGENT_WRAP_UP_PERFORMANCE_DETAIL_VIEW", "QUEUE_ACTIVITY_SUMMARY_VIEW", "QUEUE_ACTIVITY_DETAIL_VIEW", "AGENT_QUEUE_ACTIVITY_SUMMARY_VIEW", "QUEUE_AGENT_DETAIL_VIEW", "QUEUE_INTERACTION_DETAIL_VIEW", "AGENT_SCHEDULE_DETAIL_VIEW", "IVR_PERFORMANCE_SUMMARY_VIEW", "IVR_PERFORMANCE_DETAIL_VIEW", "ANSWER_INSIGHTS_VIEW", "HANDLE_INSIGHTS_VIEW", "TALK_INSIGHTS_VIEW", "HOLD_INSIGHTS_VIEW", "ACW_INSIGHTS_VIEW", "WAIT_INSIGHTS_VIEW", "AGENT_WRAP_UP_PERFORMANCE_INTERVAL_DETAIL_VIEW", "FLOW_OUTCOME_SUMMARY_VIEW", "FLOW_OUTCOME_PERFORMANCE_DETAIL_VIEW", "FLOW_OUTCOME_PERFORMANCE_INTERVAL_DETAIL_VIEW", "FLOW_DESTINATION_SUMMARY_VIEW", "FLOW_DESTINATION_DETAIL_VIEW"]
      if view_type && !allowed_values.include?(view_type)
        fail ArgumentError, "invalid value for 'view_type', must be one of #{allowed_values}."
      end
      @view_type = view_type
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] export_error_messages_type Object to be assigned
    def export_error_messages_type=(export_error_messages_type)
      allowed_values = ["FAILED_CONVERTING_EXPORT_JOB", "FAILED_NO_DATA_EXPORT_JOB_FOUND", "FAILED_GETTING_DATA_FROM_SERVICE", "FAILED_GENERATING_TEMP_FILE", "FAILED_SAVING_FILE_TO_S3", "FAILED_NOTIFYING_SKYWALKER_OF_DOWNLOAD", "FAILED_BUILDING_DOWNLOAD_URL_FROM_SKYWALKER_RESPONSE", "EXPORT_TYPE_NOT_IMPLEMENTED"]
      if export_error_messages_type && !allowed_values.include?(export_error_messages_type)
        fail ArgumentError, "invalid value for 'export_error_messages_type', must be one of #{allowed_values}."
      end
      @export_error_messages_type = export_error_messages_type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          status == o.status &&
          export_format == o.export_format &&
          download_url == o.download_url &&
          view_type == o.view_type &&
          export_error_messages_type == o.export_error_messages_type &&
          read == o.read &&
          created_date_time == o.created_date_time &&
          modified_date_time == o.modified_date_time &&
          percentage_complete == o.percentage_complete
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, status, export_format, download_url, view_type, export_error_messages_type, read, created_date_time, modified_date_time, percentage_complete].hash
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
