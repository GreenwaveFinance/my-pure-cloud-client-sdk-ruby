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
  class ParticipantBasic
    # A globally unique identifier for this conversation.
    attr_accessor :id

    # The timestamp when this participant joined the conversation in the provider clock. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :start_time

    # The timestamp when this participant disconnected from the conversation in the provider clock. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :end_time

    # The timestamp when this participant was connected to the conversation in the provider clock. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :connected_time

    # A human readable name identifying the participant.
    attr_accessor :name

    # If this participant represents a user, then this will be an URI that can be used to fetch the user.
    attr_accessor :user_uri

    # If this participant represents a user, then this will be the globally unique identifier for the user.
    attr_accessor :user_id

    # If this participant represents an external contact, then this will be the globally unique identifier for the external contact.
    attr_accessor :external_contact_id

    # If this participant represents an external org, then this will be the globally unique identifier for the external org.
    attr_accessor :external_organization_id

    # If present, the queue id that the communication channel came in on.
    attr_accessor :queue_id

    # If present, group of users the participant represents.
    attr_accessor :group_id

    # If present, the queue name that the communication channel came in on.
    attr_accessor :queue_name

    # A well known string that specifies the purpose of this participant.
    attr_accessor :purpose

    # A well known string that specifies the type of this participant.
    attr_accessor :participant_type

    # If this participant is part of a consult transfer, then this will be the participant id of the participant being transferred.
    attr_accessor :consult_participant_id

    # The address for the this participant. For a phone call this will be the ANI.
    attr_accessor :address

    # The address for the this participant. For a phone call this will be the ANI.
    attr_accessor :ani

    # The ani-based name for this participant.
    attr_accessor :ani_name

    # The address for the this participant. For a phone call this will be the ANI.
    attr_accessor :dnis

    # An ISO 639 language code specifying the locale for this participant
    attr_accessor :locale

    # True iff this participant is required to enter wrapup for this conversation.
    attr_accessor :wrapup_required

    # This field controls how the UI prompts the agent for a wrapup.
    attr_accessor :wrapup_prompt

    # Specifies how long a timed ACW session will last.
    attr_accessor :wrapup_timeout_ms

    # The UI sets this field when the agent chooses to skip entering a wrapup for this participant.
    attr_accessor :wrapup_skipped

    # Call wrap up or disposition data.
    attr_accessor :wrapup

    # Information on how a communication should be routed to an agent.
    attr_accessor :conversation_routing_data

    # Specifies how long the agent has to answer an interaction before being marked as not responding.
    attr_accessor :alerting_timeout_ms

    # If this participant is a monitor, then this will be the id of the participant that is being monitored.
    attr_accessor :monitored_participant_id

    # Additional participant attributes
    attr_accessor :attributes

    attr_accessor :calls

    attr_accessor :callbacks

    attr_accessor :chats

    attr_accessor :cobrowsesessions

    attr_accessor :emails

    attr_accessor :messages

    attr_accessor :screenshares

    attr_accessor :social_expressions

    attr_accessor :videos

    attr_accessor :evaluations

    # The current screen recording state for this participant.
    attr_accessor :screen_recording_state

    # The reason specifying why participant flagged the conversation.
    attr_accessor :flagged_reason

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'start_time' => :'startTime',
        
        :'end_time' => :'endTime',
        
        :'connected_time' => :'connectedTime',
        
        :'name' => :'name',
        
        :'user_uri' => :'userUri',
        
        :'user_id' => :'userId',
        
        :'external_contact_id' => :'externalContactId',
        
        :'external_organization_id' => :'externalOrganizationId',
        
        :'queue_id' => :'queueId',
        
        :'group_id' => :'groupId',
        
        :'queue_name' => :'queueName',
        
        :'purpose' => :'purpose',
        
        :'participant_type' => :'participantType',
        
        :'consult_participant_id' => :'consultParticipantId',
        
        :'address' => :'address',
        
        :'ani' => :'ani',
        
        :'ani_name' => :'aniName',
        
        :'dnis' => :'dnis',
        
        :'locale' => :'locale',
        
        :'wrapup_required' => :'wrapupRequired',
        
        :'wrapup_prompt' => :'wrapupPrompt',
        
        :'wrapup_timeout_ms' => :'wrapupTimeoutMs',
        
        :'wrapup_skipped' => :'wrapupSkipped',
        
        :'wrapup' => :'wrapup',
        
        :'conversation_routing_data' => :'conversationRoutingData',
        
        :'alerting_timeout_ms' => :'alertingTimeoutMs',
        
        :'monitored_participant_id' => :'monitoredParticipantId',
        
        :'attributes' => :'attributes',
        
        :'calls' => :'calls',
        
        :'callbacks' => :'callbacks',
        
        :'chats' => :'chats',
        
        :'cobrowsesessions' => :'cobrowsesessions',
        
        :'emails' => :'emails',
        
        :'messages' => :'messages',
        
        :'screenshares' => :'screenshares',
        
        :'social_expressions' => :'socialExpressions',
        
        :'videos' => :'videos',
        
        :'evaluations' => :'evaluations',
        
        :'screen_recording_state' => :'screenRecordingState',
        
        :'flagged_reason' => :'flaggedReason'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'start_time' => :'DateTime',
        
        :'end_time' => :'DateTime',
        
        :'connected_time' => :'DateTime',
        
        :'name' => :'String',
        
        :'user_uri' => :'String',
        
        :'user_id' => :'String',
        
        :'external_contact_id' => :'String',
        
        :'external_organization_id' => :'String',
        
        :'queue_id' => :'String',
        
        :'group_id' => :'String',
        
        :'queue_name' => :'String',
        
        :'purpose' => :'String',
        
        :'participant_type' => :'String',
        
        :'consult_participant_id' => :'String',
        
        :'address' => :'String',
        
        :'ani' => :'String',
        
        :'ani_name' => :'String',
        
        :'dnis' => :'String',
        
        :'locale' => :'String',
        
        :'wrapup_required' => :'BOOLEAN',
        
        :'wrapup_prompt' => :'String',
        
        :'wrapup_timeout_ms' => :'Integer',
        
        :'wrapup_skipped' => :'BOOLEAN',
        
        :'wrapup' => :'Wrapup',
        
        :'conversation_routing_data' => :'ConversationRoutingData',
        
        :'alerting_timeout_ms' => :'Integer',
        
        :'monitored_participant_id' => :'String',
        
        :'attributes' => :'Hash<String, String>',
        
        :'calls' => :'Array<CallBasic>',
        
        :'callbacks' => :'Array<CallbackBasic>',
        
        :'chats' => :'Array<ConversationChat>',
        
        :'cobrowsesessions' => :'Array<Cobrowsesession>',
        
        :'emails' => :'Array<Email>',
        
        :'messages' => :'Array<Message>',
        
        :'screenshares' => :'Array<Screenshare>',
        
        :'social_expressions' => :'Array<SocialExpression>',
        
        :'videos' => :'Array<Video>',
        
        :'evaluations' => :'Array<Evaluation>',
        
        :'screen_recording_state' => :'String',
        
        :'flagged_reason' => :'String'
        
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

      
      if attributes.has_key?(:'startTime')
        
        
        self.start_time = attributes[:'startTime']
        
      
      end

      
      if attributes.has_key?(:'endTime')
        
        
        self.end_time = attributes[:'endTime']
        
      
      end

      
      if attributes.has_key?(:'connectedTime')
        
        
        self.connected_time = attributes[:'connectedTime']
        
      
      end

      
      if attributes.has_key?(:'name')
        
        
        self.name = attributes[:'name']
        
      
      end

      
      if attributes.has_key?(:'userUri')
        
        
        self.user_uri = attributes[:'userUri']
        
      
      end

      
      if attributes.has_key?(:'userId')
        
        
        self.user_id = attributes[:'userId']
        
      
      end

      
      if attributes.has_key?(:'externalContactId')
        
        
        self.external_contact_id = attributes[:'externalContactId']
        
      
      end

      
      if attributes.has_key?(:'externalOrganizationId')
        
        
        self.external_organization_id = attributes[:'externalOrganizationId']
        
      
      end

      
      if attributes.has_key?(:'queueId')
        
        
        self.queue_id = attributes[:'queueId']
        
      
      end

      
      if attributes.has_key?(:'groupId')
        
        
        self.group_id = attributes[:'groupId']
        
      
      end

      
      if attributes.has_key?(:'queueName')
        
        
        self.queue_name = attributes[:'queueName']
        
      
      end

      
      if attributes.has_key?(:'purpose')
        
        
        self.purpose = attributes[:'purpose']
        
      
      end

      
      if attributes.has_key?(:'participantType')
        
        
        self.participant_type = attributes[:'participantType']
        
      
      end

      
      if attributes.has_key?(:'consultParticipantId')
        
        
        self.consult_participant_id = attributes[:'consultParticipantId']
        
      
      end

      
      if attributes.has_key?(:'address')
        
        
        self.address = attributes[:'address']
        
      
      end

      
      if attributes.has_key?(:'ani')
        
        
        self.ani = attributes[:'ani']
        
      
      end

      
      if attributes.has_key?(:'aniName')
        
        
        self.ani_name = attributes[:'aniName']
        
      
      end

      
      if attributes.has_key?(:'dnis')
        
        
        self.dnis = attributes[:'dnis']
        
      
      end

      
      if attributes.has_key?(:'locale')
        
        
        self.locale = attributes[:'locale']
        
      
      end

      
      if attributes.has_key?(:'wrapupRequired')
        
        
        self.wrapup_required = attributes[:'wrapupRequired']
        
      
      end

      
      if attributes.has_key?(:'wrapupPrompt')
        
        
        self.wrapup_prompt = attributes[:'wrapupPrompt']
        
      
      end

      
      if attributes.has_key?(:'wrapupTimeoutMs')
        
        
        self.wrapup_timeout_ms = attributes[:'wrapupTimeoutMs']
        
      
      end

      
      if attributes.has_key?(:'wrapupSkipped')
        
        
        self.wrapup_skipped = attributes[:'wrapupSkipped']
        
      
      end

      
      if attributes.has_key?(:'wrapup')
        
        
        self.wrapup = attributes[:'wrapup']
        
      
      end

      
      if attributes.has_key?(:'conversationRoutingData')
        
        
        self.conversation_routing_data = attributes[:'conversationRoutingData']
        
      
      end

      
      if attributes.has_key?(:'alertingTimeoutMs')
        
        
        self.alerting_timeout_ms = attributes[:'alertingTimeoutMs']
        
      
      end

      
      if attributes.has_key?(:'monitoredParticipantId')
        
        
        self.monitored_participant_id = attributes[:'monitoredParticipantId']
        
      
      end

      
      if attributes.has_key?(:'attributes')
        
        if (value = attributes[:'attributes']).is_a?(Array)
          self.attributes = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'calls')
        
        if (value = attributes[:'calls']).is_a?(Array)
          self.calls = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'callbacks')
        
        if (value = attributes[:'callbacks']).is_a?(Array)
          self.callbacks = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'chats')
        
        if (value = attributes[:'chats']).is_a?(Array)
          self.chats = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'cobrowsesessions')
        
        if (value = attributes[:'cobrowsesessions']).is_a?(Array)
          self.cobrowsesessions = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'emails')
        
        if (value = attributes[:'emails']).is_a?(Array)
          self.emails = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'messages')
        
        if (value = attributes[:'messages']).is_a?(Array)
          self.messages = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'screenshares')
        
        if (value = attributes[:'screenshares']).is_a?(Array)
          self.screenshares = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'socialExpressions')
        
        if (value = attributes[:'socialExpressions']).is_a?(Array)
          self.social_expressions = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'videos')
        
        if (value = attributes[:'videos']).is_a?(Array)
          self.videos = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'evaluations')
        
        if (value = attributes[:'evaluations']).is_a?(Array)
          self.evaluations = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'screenRecordingState')
        
        
        self.screen_recording_state = attributes[:'screenRecordingState']
        
      
      end

      
      if attributes.has_key?(:'flaggedReason')
        
        
        self.flagged_reason = attributes[:'flaggedReason']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["mandatory", "optional", "timeout", "forcedTimeout"]
      if @wrapup_prompt && !allowed_values.include?(@wrapup_prompt)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["requested", "active", "paused", "stopped", "error", "timeout"]
      if @screen_recording_state && !allowed_values.include?(@screen_recording_state)
        return false
      end
      
      
      
      
      
      allowed_values = ["general"]
      if @flagged_reason && !allowed_values.include?(@flagged_reason)
        return false
      end
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wrapup_prompt Object to be assigned
    def wrapup_prompt=(wrapup_prompt)
      allowed_values = ["mandatory", "optional", "timeout", "forcedTimeout"]
      if wrapup_prompt && !allowed_values.include?(wrapup_prompt)
        fail ArgumentError, "invalid value for 'wrapup_prompt', must be one of #{allowed_values}."
      end
      @wrapup_prompt = wrapup_prompt
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] screen_recording_state Object to be assigned
    def screen_recording_state=(screen_recording_state)
      allowed_values = ["requested", "active", "paused", "stopped", "error", "timeout"]
      if screen_recording_state && !allowed_values.include?(screen_recording_state)
        fail ArgumentError, "invalid value for 'screen_recording_state', must be one of #{allowed_values}."
      end
      @screen_recording_state = screen_recording_state
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flagged_reason Object to be assigned
    def flagged_reason=(flagged_reason)
      allowed_values = ["general"]
      if flagged_reason && !allowed_values.include?(flagged_reason)
        fail ArgumentError, "invalid value for 'flagged_reason', must be one of #{allowed_values}."
      end
      @flagged_reason = flagged_reason
    end

    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          start_time == o.start_time &&
          end_time == o.end_time &&
          connected_time == o.connected_time &&
          name == o.name &&
          user_uri == o.user_uri &&
          user_id == o.user_id &&
          external_contact_id == o.external_contact_id &&
          external_organization_id == o.external_organization_id &&
          queue_id == o.queue_id &&
          group_id == o.group_id &&
          queue_name == o.queue_name &&
          purpose == o.purpose &&
          participant_type == o.participant_type &&
          consult_participant_id == o.consult_participant_id &&
          address == o.address &&
          ani == o.ani &&
          ani_name == o.ani_name &&
          dnis == o.dnis &&
          locale == o.locale &&
          wrapup_required == o.wrapup_required &&
          wrapup_prompt == o.wrapup_prompt &&
          wrapup_timeout_ms == o.wrapup_timeout_ms &&
          wrapup_skipped == o.wrapup_skipped &&
          wrapup == o.wrapup &&
          conversation_routing_data == o.conversation_routing_data &&
          alerting_timeout_ms == o.alerting_timeout_ms &&
          monitored_participant_id == o.monitored_participant_id &&
          attributes == o.attributes &&
          calls == o.calls &&
          callbacks == o.callbacks &&
          chats == o.chats &&
          cobrowsesessions == o.cobrowsesessions &&
          emails == o.emails &&
          messages == o.messages &&
          screenshares == o.screenshares &&
          social_expressions == o.social_expressions &&
          videos == o.videos &&
          evaluations == o.evaluations &&
          screen_recording_state == o.screen_recording_state &&
          flagged_reason == o.flagged_reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, start_time, end_time, connected_time, name, user_uri, user_id, external_contact_id, external_organization_id, queue_id, group_id, queue_name, purpose, participant_type, consult_participant_id, address, ani, ani_name, dnis, locale, wrapup_required, wrapup_prompt, wrapup_timeout_ms, wrapup_skipped, wrapup, conversation_routing_data, alerting_timeout_ms, monitored_participant_id, attributes, calls, callbacks, chats, cobrowsesessions, emails, messages, screenshares, social_expressions, videos, evaluations, screen_recording_state, flagged_reason].hash
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
