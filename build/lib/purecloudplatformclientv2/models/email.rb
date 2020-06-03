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
  class Email
    # The connection state of this communication.
    attr_accessor :state

    # A globally unique identifier for this communication.
    attr_accessor :id

    # True if this call is held and the person on this side hears silence.
    attr_accessor :held

    # The subject for the initial email that started this conversation.
    attr_accessor :subject

    # The number of email messages sent by this participant.
    attr_accessor :messages_sent

    # The time line of the participant's email, divided into activity segments.
    attr_accessor :segments

    # The direction of the email
    attr_accessor :direction

    # A globally unique identifier for the recording associated with this call.
    attr_accessor :recording_id

    attr_accessor :error_info

    # System defined string indicating what caused the communication to disconnect. Will be null until the communication disconnects.
    attr_accessor :disconnect_type

    # The timestamp the email was placed on hold in the cloud clock if the email is currently on hold. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :start_hold_time

    # The timestamp the communication has when it is first put into an alerting state. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :start_alerting_time

    # The timestamp when this communication was connected in the cloud clock. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :connected_time

    # The timestamp when this communication disconnected from the conversation in the provider clock. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :disconnected_time

    # Indicates that the email was auto-generated like an Out of Office reply.
    attr_accessor :auto_generated

    # The source provider for the email.
    attr_accessor :provider

    # The UUID of the script to use.
    attr_accessor :script_id

    # The id of the peer communication corresponding to a matching leg for this communication.
    attr_accessor :peer_id

    # A globally unique identifier for the stored content of this communication.
    attr_accessor :message_id

    # A list of uploaded attachments on the email draft.
    attr_accessor :draft_attachments

    # Indicates if the inbound email was marked as spam.
    attr_accessor :spam

    # Call wrap up or disposition data.
    attr_accessor :wrapup

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'state' => :'state',
        
        :'id' => :'id',
        
        :'held' => :'held',
        
        :'subject' => :'subject',
        
        :'messages_sent' => :'messagesSent',
        
        :'segments' => :'segments',
        
        :'direction' => :'direction',
        
        :'recording_id' => :'recordingId',
        
        :'error_info' => :'errorInfo',
        
        :'disconnect_type' => :'disconnectType',
        
        :'start_hold_time' => :'startHoldTime',
        
        :'start_alerting_time' => :'startAlertingTime',
        
        :'connected_time' => :'connectedTime',
        
        :'disconnected_time' => :'disconnectedTime',
        
        :'auto_generated' => :'autoGenerated',
        
        :'provider' => :'provider',
        
        :'script_id' => :'scriptId',
        
        :'peer_id' => :'peerId',
        
        :'message_id' => :'messageId',
        
        :'draft_attachments' => :'draftAttachments',
        
        :'spam' => :'spam',
        
        :'wrapup' => :'wrapup'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'state' => :'String',
        
        :'id' => :'String',
        
        :'held' => :'BOOLEAN',
        
        :'subject' => :'String',
        
        :'messages_sent' => :'Integer',
        
        :'segments' => :'Array<Segment>',
        
        :'direction' => :'String',
        
        :'recording_id' => :'String',
        
        :'error_info' => :'ErrorBody',
        
        :'disconnect_type' => :'String',
        
        :'start_hold_time' => :'DateTime',
        
        :'start_alerting_time' => :'DateTime',
        
        :'connected_time' => :'DateTime',
        
        :'disconnected_time' => :'DateTime',
        
        :'auto_generated' => :'BOOLEAN',
        
        :'provider' => :'String',
        
        :'script_id' => :'String',
        
        :'peer_id' => :'String',
        
        :'message_id' => :'String',
        
        :'draft_attachments' => :'Array<Attachment>',
        
        :'spam' => :'BOOLEAN',
        
        :'wrapup' => :'Wrapup'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'state')
        
        
        self.state = attributes[:'state']
        
      
      end

      
      if attributes.has_key?(:'id')
        
        
        self.id = attributes[:'id']
        
      
      end

      
      if attributes.has_key?(:'held')
        
        
        self.held = attributes[:'held']
        
      
      end

      
      if attributes.has_key?(:'subject')
        
        
        self.subject = attributes[:'subject']
        
      
      end

      
      if attributes.has_key?(:'messagesSent')
        
        
        self.messages_sent = attributes[:'messagesSent']
        
      
      end

      
      if attributes.has_key?(:'segments')
        
        if (value = attributes[:'segments']).is_a?(Array)
          self.segments = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'direction')
        
        
        self.direction = attributes[:'direction']
        
      
      end

      
      if attributes.has_key?(:'recordingId')
        
        
        self.recording_id = attributes[:'recordingId']
        
      
      end

      
      if attributes.has_key?(:'errorInfo')
        
        
        self.error_info = attributes[:'errorInfo']
        
      
      end

      
      if attributes.has_key?(:'disconnectType')
        
        
        self.disconnect_type = attributes[:'disconnectType']
        
      
      end

      
      if attributes.has_key?(:'startHoldTime')
        
        
        self.start_hold_time = attributes[:'startHoldTime']
        
      
      end

      
      if attributes.has_key?(:'startAlertingTime')
        
        
        self.start_alerting_time = attributes[:'startAlertingTime']
        
      
      end

      
      if attributes.has_key?(:'connectedTime')
        
        
        self.connected_time = attributes[:'connectedTime']
        
      
      end

      
      if attributes.has_key?(:'disconnectedTime')
        
        
        self.disconnected_time = attributes[:'disconnectedTime']
        
      
      end

      
      if attributes.has_key?(:'autoGenerated')
        
        
        self.auto_generated = attributes[:'autoGenerated']
        
      
      end

      
      if attributes.has_key?(:'provider')
        
        
        self.provider = attributes[:'provider']
        
      
      end

      
      if attributes.has_key?(:'scriptId')
        
        
        self.script_id = attributes[:'scriptId']
        
      
      end

      
      if attributes.has_key?(:'peerId')
        
        
        self.peer_id = attributes[:'peerId']
        
      
      end

      
      if attributes.has_key?(:'messageId')
        
        
        self.message_id = attributes[:'messageId']
        
      
      end

      
      if attributes.has_key?(:'draftAttachments')
        
        if (value = attributes[:'draftAttachments']).is_a?(Array)
          self.draft_attachments = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'spam')
        
        
        self.spam = attributes[:'spam']
        
      
      end

      
      if attributes.has_key?(:'wrapup')
        
        
        self.wrapup = attributes[:'wrapup']
        
      
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
      
      
      
      allowed_values = ["alerting", "connected", "disconnected", "none", "transmitting"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["inbound", "outbound"]
      if @direction && !allowed_values.include?(@direction)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["endpoint", "client", "system", "timeout", "transfer", "transfer.conference", "transfer.consult", "transfer.forward", "transfer.noanswer", "transfer.notavailable", "transport.failure", "error", "peer", "other", "spam", "uncallable"]
      if @disconnect_type && !allowed_values.include?(@disconnect_type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["alerting", "connected", "disconnected", "none", "transmitting"]
      if state && !allowed_values.include?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{allowed_values}."
      end
      @state = state
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      allowed_values = ["inbound", "outbound"]
      if direction && !allowed_values.include?(direction)
        fail ArgumentError, "invalid value for 'direction', must be one of #{allowed_values}."
      end
      @direction = direction
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disconnect_type Object to be assigned
    def disconnect_type=(disconnect_type)
      allowed_values = ["endpoint", "client", "system", "timeout", "transfer", "transfer.conference", "transfer.consult", "transfer.forward", "transfer.noanswer", "transfer.notavailable", "transport.failure", "error", "peer", "other", "spam", "uncallable"]
      if disconnect_type && !allowed_values.include?(disconnect_type)
        fail ArgumentError, "invalid value for 'disconnect_type', must be one of #{allowed_values}."
      end
      @disconnect_type = disconnect_type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          state == o.state &&
          id == o.id &&
          held == o.held &&
          subject == o.subject &&
          messages_sent == o.messages_sent &&
          segments == o.segments &&
          direction == o.direction &&
          recording_id == o.recording_id &&
          error_info == o.error_info &&
          disconnect_type == o.disconnect_type &&
          start_hold_time == o.start_hold_time &&
          start_alerting_time == o.start_alerting_time &&
          connected_time == o.connected_time &&
          disconnected_time == o.disconnected_time &&
          auto_generated == o.auto_generated &&
          provider == o.provider &&
          script_id == o.script_id &&
          peer_id == o.peer_id &&
          message_id == o.message_id &&
          draft_attachments == o.draft_attachments &&
          spam == o.spam &&
          wrapup == o.wrapup
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [state, id, held, subject, messages_sent, segments, direction, recording_id, error_info, disconnect_type, start_hold_time, start_alerting_time, connected_time, disconnected_time, auto_generated, provider, script_id, peer_id, message_id, draft_attachments, spam, wrapup].hash
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
