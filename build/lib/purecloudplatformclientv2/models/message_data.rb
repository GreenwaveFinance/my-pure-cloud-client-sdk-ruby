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
  class MessageData
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    # The unique identifier of the message from provider
    attr_accessor :provider_message_id

    # The time when the message was received or sent. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :timestamp

    # The sender of the text message.
    attr_accessor :from_address

    # The recipient of the text message.
    attr_accessor :to_address

    # The direction of the message.
    attr_accessor :direction

    # Type of text messenger.
    attr_accessor :messenger_type

    # The body of the text message.
    attr_accessor :text_body

    # The status of the message.
    attr_accessor :status

    # The media details associated to a message.
    attr_accessor :media

    # The sticker details associated to a message.
    attr_accessor :stickers

    # User who sent this message.
    attr_accessor :created_by

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'provider_message_id' => :'providerMessageId',
        
        :'timestamp' => :'timestamp',
        
        :'from_address' => :'fromAddress',
        
        :'to_address' => :'toAddress',
        
        :'direction' => :'direction',
        
        :'messenger_type' => :'messengerType',
        
        :'text_body' => :'textBody',
        
        :'status' => :'status',
        
        :'media' => :'media',
        
        :'stickers' => :'stickers',
        
        :'created_by' => :'createdBy',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'provider_message_id' => :'String',
        
        :'timestamp' => :'DateTime',
        
        :'from_address' => :'String',
        
        :'to_address' => :'String',
        
        :'direction' => :'String',
        
        :'messenger_type' => :'String',
        
        :'text_body' => :'String',
        
        :'status' => :'String',
        
        :'media' => :'Array<MessageMedia>',
        
        :'stickers' => :'Array<MessageSticker>',
        
        :'created_by' => :'User',
        
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

      
      if attributes.has_key?(:'providerMessageId')
        
        
        self.provider_message_id = attributes[:'providerMessageId']
        
      
      end

      
      if attributes.has_key?(:'timestamp')
        
        
        self.timestamp = attributes[:'timestamp']
        
      
      end

      
      if attributes.has_key?(:'fromAddress')
        
        
        self.from_address = attributes[:'fromAddress']
        
      
      end

      
      if attributes.has_key?(:'toAddress')
        
        
        self.to_address = attributes[:'toAddress']
        
      
      end

      
      if attributes.has_key?(:'direction')
        
        
        self.direction = attributes[:'direction']
        
      
      end

      
      if attributes.has_key?(:'messengerType')
        
        
        self.messenger_type = attributes[:'messengerType']
        
      
      end

      
      if attributes.has_key?(:'textBody')
        
        
        self.text_body = attributes[:'textBody']
        
      
      end

      
      if attributes.has_key?(:'status')
        
        
        self.status = attributes[:'status']
        
      
      end

      
      if attributes.has_key?(:'media')
        
        if (value = attributes[:'media']).is_a?(Array)
          self.media = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'stickers')
        
        if (value = attributes[:'stickers']).is_a?(Array)
          self.stickers = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'createdBy')
        
        
        self.created_by = attributes[:'createdBy']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @timestamp.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["inbound", "outbound"]
      if @direction && !allowed_values.include?(@direction)
        return false
      end
      
      
      
      
      
      allowed_values = ["sms", "facebook", "twitter", "line", "whatsapp", "telegram", "kakao"]
      if @messenger_type && !allowed_values.include?(@messenger_type)
        return false
      end
      
      
      
      
      if @text_body.nil?
        return false
      end

      
      
      
      
      
      if @status.nil?
        return false
      end

      
      
      allowed_values = ["queued", "sent", "failed", "received", "delivery-success", "delivery-failed", "read"]
      if @status && !allowed_values.include?(@status)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
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
    # @param [Object] messenger_type Object to be assigned
    def messenger_type=(messenger_type)
      allowed_values = ["sms", "facebook", "twitter", "line", "whatsapp", "telegram", "kakao"]
      if messenger_type && !allowed_values.include?(messenger_type)
        fail ArgumentError, "invalid value for 'messenger_type', must be one of #{allowed_values}."
      end
      @messenger_type = messenger_type
    end

    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      allowed_values = ["queued", "sent", "failed", "received", "delivery-success", "delivery-failed", "read"]
      if status && !allowed_values.include?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{allowed_values}."
      end
      @status = status
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          provider_message_id == o.provider_message_id &&
          timestamp == o.timestamp &&
          from_address == o.from_address &&
          to_address == o.to_address &&
          direction == o.direction &&
          messenger_type == o.messenger_type &&
          text_body == o.text_body &&
          status == o.status &&
          media == o.media &&
          stickers == o.stickers &&
          created_by == o.created_by &&
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
      [id, name, provider_message_id, timestamp, from_address, to_address, direction, messenger_type, text_body, status, media, stickers, created_by, self_uri].hash
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
