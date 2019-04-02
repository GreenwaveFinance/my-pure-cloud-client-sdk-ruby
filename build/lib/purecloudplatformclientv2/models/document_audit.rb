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
  class DocumentAudit
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    attr_accessor :user

    attr_accessor :workspace

    attr_accessor :transaction_id

    attr_accessor :transaction_initiator

    attr_accessor :application

    attr_accessor :service_name

    attr_accessor :level

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :timestamp

    attr_accessor :status

    attr_accessor :action_context

    attr_accessor :action

    attr_accessor :entity

    attr_accessor :changes

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'user' => :'user',
        
        :'workspace' => :'workspace',
        
        :'transaction_id' => :'transactionId',
        
        :'transaction_initiator' => :'transactionInitiator',
        
        :'application' => :'application',
        
        :'service_name' => :'serviceName',
        
        :'level' => :'level',
        
        :'timestamp' => :'timestamp',
        
        :'status' => :'status',
        
        :'action_context' => :'actionContext',
        
        :'action' => :'action',
        
        :'entity' => :'entity',
        
        :'changes' => :'changes',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'user' => :'UriReference',
        
        :'workspace' => :'UriReference',
        
        :'transaction_id' => :'String',
        
        :'transaction_initiator' => :'BOOLEAN',
        
        :'application' => :'String',
        
        :'service_name' => :'String',
        
        :'level' => :'String',
        
        :'timestamp' => :'DateTime',
        
        :'status' => :'String',
        
        :'action_context' => :'String',
        
        :'action' => :'String',
        
        :'entity' => :'AuditEntityReference',
        
        :'changes' => :'Array<AuditChange>',
        
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

      
      if attributes.has_key?(:'user')
        
        
        self.user = attributes[:'user']
        
      
      end

      
      if attributes.has_key?(:'workspace')
        
        
        self.workspace = attributes[:'workspace']
        
      
      end

      
      if attributes.has_key?(:'transactionId')
        
        
        self.transaction_id = attributes[:'transactionId']
        
      
      end

      
      if attributes.has_key?(:'transactionInitiator')
        
        
        self.transaction_initiator = attributes[:'transactionInitiator']
        
      
      end

      
      if attributes.has_key?(:'application')
        
        
        self.application = attributes[:'application']
        
      
      end

      
      if attributes.has_key?(:'serviceName')
        
        
        self.service_name = attributes[:'serviceName']
        
      
      end

      
      if attributes.has_key?(:'level')
        
        
        self.level = attributes[:'level']
        
      
      end

      
      if attributes.has_key?(:'timestamp')
        
        
        self.timestamp = attributes[:'timestamp']
        
      
      end

      
      if attributes.has_key?(:'status')
        
        
        self.status = attributes[:'status']
        
      
      end

      
      if attributes.has_key?(:'actionContext')
        
        
        self.action_context = attributes[:'actionContext']
        
      
      end

      
      if attributes.has_key?(:'action')
        
        
        self.action = attributes[:'action']
        
      
      end

      
      if attributes.has_key?(:'entity')
        
        
        self.entity = attributes[:'entity']
        
      
      end

      
      if attributes.has_key?(:'changes')
        
        if (value = attributes[:'changes']).is_a?(Array)
          self.changes = value
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["USER", "SYSTEM"]
      if @level && !allowed_values.include?(@level)
        return false
      end
      
      
      
      
      
      
      
      
      
      allowed_values = ["SUCCESS", "FAILURE", "WARNING"]
      if @status && !allowed_values.include?(@status)
        return false
      end
      
      
      
      
      
      allowed_values = ["CREATE", "READ", "UPDATE", "DELETE", "DOWNLOAD", "VIEW", "UPLOAD", "SAVE", "MOVE", "COPY", "ADD", "REMOVE", "RECEIVE", "CONVERT", "FAX", "CREATE_COVERPAGE", "USER_ADD", "USER_REMOVE", "MEMBER_ADD", "MEMBER_REMOVE", "MEMBER_UPDATE", "TAG_ADD", "TAG_REMOVE", "TAG_UPDATE", "ATTRIBUTE_ADD", "ATTRIBUTE_REMOVE", "ATTRIBUTE_UPDATE", "ATTRIBUTE_GROUP_INSTANCE_ADD", "ATTRIBUTE_GROUP_INSTANCE_REMOVE", "ATTRIBUTE_GROUP_INSTANCE_UPDATE", "INDEX_SAVE", "INDEX_DELETE", "INDEX_CREATE", "FILE_SAVE", "FILE_DELETE", "FILE_READ", "THUMBNAIL_CREATE", "TEXT_EXTRACT", "SHARE_ADD", "SHARE_REMOVE", "VERSION_CREATE"]
      if @action_context && !allowed_values.include?(@action_context)
        return false
      end
      
      
      
      
      
      allowed_values = ["CREATE", "READ", "UPDATE", "DELETE", "DOWNLOAD", "VIEW", "UPLOAD", "SAVE", "MOVE", "COPY", "ADD", "REMOVE", "RECEIVE", "CONVERT", "FAX", "CREATE_COVERPAGE", "USER_ADD", "USER_REMOVE", "MEMBER_ADD", "MEMBER_REMOVE", "MEMBER_UPDATE", "TAG_ADD", "TAG_REMOVE", "TAG_UPDATE", "ATTRIBUTE_ADD", "ATTRIBUTE_REMOVE", "ATTRIBUTE_UPDATE", "ATTRIBUTE_GROUP_INSTANCE_ADD", "ATTRIBUTE_GROUP_INSTANCE_REMOVE", "ATTRIBUTE_GROUP_INSTANCE_UPDATE", "INDEX_SAVE", "INDEX_DELETE", "INDEX_CREATE", "FILE_SAVE", "FILE_DELETE", "FILE_READ", "THUMBNAIL_CREATE", "TEXT_EXTRACT", "SHARE_ADD", "SHARE_REMOVE", "VERSION_CREATE"]
      if @action && !allowed_values.include?(@action)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] level Object to be assigned
    def level=(level)
      allowed_values = ["USER", "SYSTEM"]
      if level && !allowed_values.include?(level)
        fail ArgumentError, "invalid value for 'level', must be one of #{allowed_values}."
      end
      @level = level
    end

    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      allowed_values = ["SUCCESS", "FAILURE", "WARNING"]
      if status && !allowed_values.include?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{allowed_values}."
      end
      @status = status
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_context Object to be assigned
    def action_context=(action_context)
      allowed_values = ["CREATE", "READ", "UPDATE", "DELETE", "DOWNLOAD", "VIEW", "UPLOAD", "SAVE", "MOVE", "COPY", "ADD", "REMOVE", "RECEIVE", "CONVERT", "FAX", "CREATE_COVERPAGE", "USER_ADD", "USER_REMOVE", "MEMBER_ADD", "MEMBER_REMOVE", "MEMBER_UPDATE", "TAG_ADD", "TAG_REMOVE", "TAG_UPDATE", "ATTRIBUTE_ADD", "ATTRIBUTE_REMOVE", "ATTRIBUTE_UPDATE", "ATTRIBUTE_GROUP_INSTANCE_ADD", "ATTRIBUTE_GROUP_INSTANCE_REMOVE", "ATTRIBUTE_GROUP_INSTANCE_UPDATE", "INDEX_SAVE", "INDEX_DELETE", "INDEX_CREATE", "FILE_SAVE", "FILE_DELETE", "FILE_READ", "THUMBNAIL_CREATE", "TEXT_EXTRACT", "SHARE_ADD", "SHARE_REMOVE", "VERSION_CREATE"]
      if action_context && !allowed_values.include?(action_context)
        fail ArgumentError, "invalid value for 'action_context', must be one of #{allowed_values}."
      end
      @action_context = action_context
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      allowed_values = ["CREATE", "READ", "UPDATE", "DELETE", "DOWNLOAD", "VIEW", "UPLOAD", "SAVE", "MOVE", "COPY", "ADD", "REMOVE", "RECEIVE", "CONVERT", "FAX", "CREATE_COVERPAGE", "USER_ADD", "USER_REMOVE", "MEMBER_ADD", "MEMBER_REMOVE", "MEMBER_UPDATE", "TAG_ADD", "TAG_REMOVE", "TAG_UPDATE", "ATTRIBUTE_ADD", "ATTRIBUTE_REMOVE", "ATTRIBUTE_UPDATE", "ATTRIBUTE_GROUP_INSTANCE_ADD", "ATTRIBUTE_GROUP_INSTANCE_REMOVE", "ATTRIBUTE_GROUP_INSTANCE_UPDATE", "INDEX_SAVE", "INDEX_DELETE", "INDEX_CREATE", "FILE_SAVE", "FILE_DELETE", "FILE_READ", "THUMBNAIL_CREATE", "TEXT_EXTRACT", "SHARE_ADD", "SHARE_REMOVE", "VERSION_CREATE"]
      if action && !allowed_values.include?(action)
        fail ArgumentError, "invalid value for 'action', must be one of #{allowed_values}."
      end
      @action = action
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          user == o.user &&
          workspace == o.workspace &&
          transaction_id == o.transaction_id &&
          transaction_initiator == o.transaction_initiator &&
          application == o.application &&
          service_name == o.service_name &&
          level == o.level &&
          timestamp == o.timestamp &&
          status == o.status &&
          action_context == o.action_context &&
          action == o.action &&
          entity == o.entity &&
          changes == o.changes &&
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
      [id, name, user, workspace, transaction_id, transaction_initiator, application, service_name, level, timestamp, status, action_context, action, entity, changes, self_uri].hash
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
