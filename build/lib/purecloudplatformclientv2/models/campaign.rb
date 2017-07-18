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
  class Campaign
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    # Creation time of the entity. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_created

    # Last modified time of the entity. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_modified

    # Required for updates, must match the version number of the most recent update
    attr_accessor :version

    # identifier of the contact list for the campaign
    attr_accessor :contact_list

    # identifier of the agent assignment queue, required for all dialing modes other than agentless
    attr_accessor :queue

    # dialing mode of the campaign
    attr_accessor :dialing_mode

    # identifier of the campaign script, required for all dialing modes other than agentless
    attr_accessor :script

    # identifier of the edge group, required for all dialing modes other than preview
    attr_accessor :edge_group

    # status of the campaign; can be set to 'on' or 'off'
    attr_accessor :campaign_status

    # the contact list phone columns to be called for the campaign
    attr_accessor :phone_columns

    # the targeted abandon rate percentage
    attr_accessor :abandon_rate

    # identifiers of the do not call lists
    attr_accessor :dnc_lists

    # the identifier of the callable time set
    attr_accessor :callable_time_set

    # the identifier of the call analysis response set, required for all dialing modes other than preview
    attr_accessor :call_analysis_response_set

    # a list of current error conditions associated with the campaign
    attr_accessor :errors

    # caller id name to be displayed on the outbound call
    attr_accessor :caller_name

    # caller id phone number to be displayed on the outbound call
    attr_accessor :caller_address

    # for agentless campaigns, the number of outbound lines to be concurrently dialed
    attr_accessor :outbound_line_count

    # identifiers of the rule sets
    attr_accessor :rule_sets

    # for preview campaigns, indicator of whether the agent can skip a preview without placing a call
    attr_accessor :skip_preview_disabled

    # for preview campaigns, number of seconds before a call will be automatically placed. A value of 0 indicates no automatic placement of calls
    attr_accessor :preview_time_out_seconds

    # information determining the order in which the contacts will be dialed
    attr_accessor :contact_sort

    # column prioritized information determining the order in which the contacts will be dialed
    attr_accessor :contact_sorts

    # for non-preview campaigns, how long to wait before dispositioning as 'no-answer', default 30 seconds
    attr_accessor :no_answer_timeout

    # The language the edge will use to analyse the call
    attr_accessor :call_analysis_language

    # The priority of this campaign relative to other campaigns
    attr_accessor :priority

    # Filter defining a subset of contacts from the contact list to be dialed
    attr_accessor :contact_list_filters

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'date_created' => :'dateCreated',
        
        :'date_modified' => :'dateModified',
        
        :'version' => :'version',
        
        :'contact_list' => :'contactList',
        
        :'queue' => :'queue',
        
        :'dialing_mode' => :'dialingMode',
        
        :'script' => :'script',
        
        :'edge_group' => :'edgeGroup',
        
        :'campaign_status' => :'campaignStatus',
        
        :'phone_columns' => :'phoneColumns',
        
        :'abandon_rate' => :'abandonRate',
        
        :'dnc_lists' => :'dncLists',
        
        :'callable_time_set' => :'callableTimeSet',
        
        :'call_analysis_response_set' => :'callAnalysisResponseSet',
        
        :'errors' => :'errors',
        
        :'caller_name' => :'callerName',
        
        :'caller_address' => :'callerAddress',
        
        :'outbound_line_count' => :'outboundLineCount',
        
        :'rule_sets' => :'ruleSets',
        
        :'skip_preview_disabled' => :'skipPreviewDisabled',
        
        :'preview_time_out_seconds' => :'previewTimeOutSeconds',
        
        :'contact_sort' => :'contactSort',
        
        :'contact_sorts' => :'contactSorts',
        
        :'no_answer_timeout' => :'noAnswerTimeout',
        
        :'call_analysis_language' => :'callAnalysisLanguage',
        
        :'priority' => :'priority',
        
        :'contact_list_filters' => :'contactListFilters',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'date_created' => :'DateTime',
        
        :'date_modified' => :'DateTime',
        
        :'version' => :'Integer',
        
        :'contact_list' => :'UriReference',
        
        :'queue' => :'UriReference',
        
        :'dialing_mode' => :'String',
        
        :'script' => :'UriReference',
        
        :'edge_group' => :'UriReference',
        
        :'campaign_status' => :'String',
        
        :'phone_columns' => :'Array<PhoneColumn>',
        
        :'abandon_rate' => :'Float',
        
        :'dnc_lists' => :'Array<UriReference>',
        
        :'callable_time_set' => :'UriReference',
        
        :'call_analysis_response_set' => :'UriReference',
        
        :'errors' => :'Array<RestErrorDetail>',
        
        :'caller_name' => :'String',
        
        :'caller_address' => :'String',
        
        :'outbound_line_count' => :'Integer',
        
        :'rule_sets' => :'Array<UriReference>',
        
        :'skip_preview_disabled' => :'BOOLEAN',
        
        :'preview_time_out_seconds' => :'Integer',
        
        :'contact_sort' => :'ContactSort',
        
        :'contact_sorts' => :'Array<ContactSort>',
        
        :'no_answer_timeout' => :'Integer',
        
        :'call_analysis_language' => :'String',
        
        :'priority' => :'Integer',
        
        :'contact_list_filters' => :'Array<UriReference>',
        
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

      
      if attributes.has_key?(:'dateCreated')
        
        
        self.date_created = attributes[:'dateCreated']
        
      
      end

      
      if attributes.has_key?(:'dateModified')
        
        
        self.date_modified = attributes[:'dateModified']
        
      
      end

      
      if attributes.has_key?(:'version')
        
        
        self.version = attributes[:'version']
        
      
      end

      
      if attributes.has_key?(:'contactList')
        
        
        self.contact_list = attributes[:'contactList']
        
      
      end

      
      if attributes.has_key?(:'queue')
        
        
        self.queue = attributes[:'queue']
        
      
      end

      
      if attributes.has_key?(:'dialingMode')
        
        
        self.dialing_mode = attributes[:'dialingMode']
        
      
      end

      
      if attributes.has_key?(:'script')
        
        
        self.script = attributes[:'script']
        
      
      end

      
      if attributes.has_key?(:'edgeGroup')
        
        
        self.edge_group = attributes[:'edgeGroup']
        
      
      end

      
      if attributes.has_key?(:'campaignStatus')
        
        
        self.campaign_status = attributes[:'campaignStatus']
        
      
      end

      
      if attributes.has_key?(:'phoneColumns')
        
        if (value = attributes[:'phoneColumns']).is_a?(Array)
          self.phone_columns = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'abandonRate')
        
        
        self.abandon_rate = attributes[:'abandonRate']
        
      
      end

      
      if attributes.has_key?(:'dncLists')
        
        if (value = attributes[:'dncLists']).is_a?(Array)
          self.dnc_lists = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'callableTimeSet')
        
        
        self.callable_time_set = attributes[:'callableTimeSet']
        
      
      end

      
      if attributes.has_key?(:'callAnalysisResponseSet')
        
        
        self.call_analysis_response_set = attributes[:'callAnalysisResponseSet']
        
      
      end

      
      if attributes.has_key?(:'errors')
        
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'callerName')
        
        
        self.caller_name = attributes[:'callerName']
        
      
      end

      
      if attributes.has_key?(:'callerAddress')
        
        
        self.caller_address = attributes[:'callerAddress']
        
      
      end

      
      if attributes.has_key?(:'outboundLineCount')
        
        
        self.outbound_line_count = attributes[:'outboundLineCount']
        
      
      end

      
      if attributes.has_key?(:'ruleSets')
        
        if (value = attributes[:'ruleSets']).is_a?(Array)
          self.rule_sets = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'skipPreviewDisabled')
        
        
        self.skip_preview_disabled = attributes[:'skipPreviewDisabled']
        
      
      end

      
      if attributes.has_key?(:'previewTimeOutSeconds')
        
        
        self.preview_time_out_seconds = attributes[:'previewTimeOutSeconds']
        
      
      end

      
      if attributes.has_key?(:'contactSort')
        
        
        self.contact_sort = attributes[:'contactSort']
        
      
      end

      
      if attributes.has_key?(:'contactSorts')
        
        if (value = attributes[:'contactSorts']).is_a?(Array)
          self.contact_sorts = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'noAnswerTimeout')
        
        
        self.no_answer_timeout = attributes[:'noAnswerTimeout']
        
      
      end

      
      if attributes.has_key?(:'callAnalysisLanguage')
        
        
        self.call_analysis_language = attributes[:'callAnalysisLanguage']
        
      
      end

      
      if attributes.has_key?(:'priority')
        
        
        self.priority = attributes[:'priority']
        
      
      end

      
      if attributes.has_key?(:'contactListFilters')
        
        if (value = attributes[:'contactListFilters']).is_a?(Array)
          self.contact_list_filters = value
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @contact_list.nil?
        return false
      end

      
      
      
      
      
      if @queue.nil?
        return false
      end

      
      
      
      
      
      if @dialing_mode.nil?
        return false
      end

      
      
      allowed_values = ["agentless", "preview", "power", "predictive", "progressive"]
      if @dialing_mode && !allowed_values.include?(@dialing_mode)
        return false
      end
      
      
      
      
      if @script.nil?
        return false
      end

      
      
      
      
      
      if @edge_group.nil?
        return false
      end

      
      
      
      
      
      if @campaign_status.nil?
        return false
      end

      
      
      allowed_values = ["on", "stopping", "off", "complete", "invalid"]
      if @campaign_status && !allowed_values.include?(@campaign_status)
        return false
      end
      
      
      
      
      if @phone_columns.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @call_analysis_response_set.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dialing_mode Object to be assigned
    def dialing_mode=(dialing_mode)
      allowed_values = ["agentless", "preview", "power", "predictive", "progressive"]
      if dialing_mode && !allowed_values.include?(dialing_mode)
        fail ArgumentError, "invalid value for 'dialing_mode', must be one of #{allowed_values}."
      end
      @dialing_mode = dialing_mode
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] campaign_status Object to be assigned
    def campaign_status=(campaign_status)
      allowed_values = ["on", "stopping", "off", "complete", "invalid"]
      if campaign_status && !allowed_values.include?(campaign_status)
        fail ArgumentError, "invalid value for 'campaign_status', must be one of #{allowed_values}."
      end
      @campaign_status = campaign_status
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          date_created == o.date_created &&
          date_modified == o.date_modified &&
          version == o.version &&
          contact_list == o.contact_list &&
          queue == o.queue &&
          dialing_mode == o.dialing_mode &&
          script == o.script &&
          edge_group == o.edge_group &&
          campaign_status == o.campaign_status &&
          phone_columns == o.phone_columns &&
          abandon_rate == o.abandon_rate &&
          dnc_lists == o.dnc_lists &&
          callable_time_set == o.callable_time_set &&
          call_analysis_response_set == o.call_analysis_response_set &&
          errors == o.errors &&
          caller_name == o.caller_name &&
          caller_address == o.caller_address &&
          outbound_line_count == o.outbound_line_count &&
          rule_sets == o.rule_sets &&
          skip_preview_disabled == o.skip_preview_disabled &&
          preview_time_out_seconds == o.preview_time_out_seconds &&
          contact_sort == o.contact_sort &&
          contact_sorts == o.contact_sorts &&
          no_answer_timeout == o.no_answer_timeout &&
          call_analysis_language == o.call_analysis_language &&
          priority == o.priority &&
          contact_list_filters == o.contact_list_filters &&
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
      [id, name, date_created, date_modified, version, contact_list, queue, dialing_mode, script, edge_group, campaign_status, phone_columns, abandon_rate, dnc_lists, callable_time_set, call_analysis_response_set, errors, caller_name, caller_address, outbound_line_count, rule_sets, skip_preview_disabled, preview_time_out_seconds, contact_sort, contact_sorts, no_answer_timeout, call_analysis_language, priority, contact_list_filters, self_uri].hash
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
