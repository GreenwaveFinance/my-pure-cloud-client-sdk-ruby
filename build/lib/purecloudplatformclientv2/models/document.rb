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
  class Document
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    attr_accessor :change_number

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_created

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_modified

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_uploaded

    attr_accessor :content_uri

    attr_accessor :workspace

    attr_accessor :created_by

    attr_accessor :uploaded_by

    attr_accessor :content_type

    attr_accessor :content_length

    attr_accessor :system_type

    attr_accessor :filename

    attr_accessor :page_count

    attr_accessor :read

    attr_accessor :caller_address

    attr_accessor :receiver_address

    attr_accessor :tags

    attr_accessor :tag_values

    attr_accessor :attributes

    attr_accessor :thumbnails

    attr_accessor :upload_status

    attr_accessor :upload_destination_uri

    attr_accessor :upload_method

    attr_accessor :lock_info

    # A list of permitted action rights for the user making the request
    attr_accessor :acl

    attr_accessor :sharing_status

    attr_accessor :sharing_uri

    attr_accessor :download_sharing_uri

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'change_number' => :'changeNumber',
        
        :'date_created' => :'dateCreated',
        
        :'date_modified' => :'dateModified',
        
        :'date_uploaded' => :'dateUploaded',
        
        :'content_uri' => :'contentUri',
        
        :'workspace' => :'workspace',
        
        :'created_by' => :'createdBy',
        
        :'uploaded_by' => :'uploadedBy',
        
        :'content_type' => :'contentType',
        
        :'content_length' => :'contentLength',
        
        :'system_type' => :'systemType',
        
        :'filename' => :'filename',
        
        :'page_count' => :'pageCount',
        
        :'read' => :'read',
        
        :'caller_address' => :'callerAddress',
        
        :'receiver_address' => :'receiverAddress',
        
        :'tags' => :'tags',
        
        :'tag_values' => :'tagValues',
        
        :'attributes' => :'attributes',
        
        :'thumbnails' => :'thumbnails',
        
        :'upload_status' => :'uploadStatus',
        
        :'upload_destination_uri' => :'uploadDestinationUri',
        
        :'upload_method' => :'uploadMethod',
        
        :'lock_info' => :'lockInfo',
        
        :'acl' => :'acl',
        
        :'sharing_status' => :'sharingStatus',
        
        :'sharing_uri' => :'sharingUri',
        
        :'download_sharing_uri' => :'downloadSharingUri',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'change_number' => :'Integer',
        
        :'date_created' => :'DateTime',
        
        :'date_modified' => :'DateTime',
        
        :'date_uploaded' => :'DateTime',
        
        :'content_uri' => :'String',
        
        :'workspace' => :'UriReference',
        
        :'created_by' => :'UriReference',
        
        :'uploaded_by' => :'UriReference',
        
        :'content_type' => :'String',
        
        :'content_length' => :'Integer',
        
        :'system_type' => :'String',
        
        :'filename' => :'String',
        
        :'page_count' => :'Integer',
        
        :'read' => :'BOOLEAN',
        
        :'caller_address' => :'String',
        
        :'receiver_address' => :'String',
        
        :'tags' => :'Array<String>',
        
        :'tag_values' => :'Array<TagValue>',
        
        :'attributes' => :'Array<DocumentAttribute>',
        
        :'thumbnails' => :'Array<DocumentThumbnail>',
        
        :'upload_status' => :'UriReference',
        
        :'upload_destination_uri' => :'String',
        
        :'upload_method' => :'String',
        
        :'lock_info' => :'LockInfo',
        
        :'acl' => :'Array<String>',
        
        :'sharing_status' => :'String',
        
        :'sharing_uri' => :'String',
        
        :'download_sharing_uri' => :'String',
        
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

      
      if attributes.has_key?(:'changeNumber')
        
        
        self.change_number = attributes[:'changeNumber']
        
      
      end

      
      if attributes.has_key?(:'dateCreated')
        
        
        self.date_created = attributes[:'dateCreated']
        
      
      end

      
      if attributes.has_key?(:'dateModified')
        
        
        self.date_modified = attributes[:'dateModified']
        
      
      end

      
      if attributes.has_key?(:'dateUploaded')
        
        
        self.date_uploaded = attributes[:'dateUploaded']
        
      
      end

      
      if attributes.has_key?(:'contentUri')
        
        
        self.content_uri = attributes[:'contentUri']
        
      
      end

      
      if attributes.has_key?(:'workspace')
        
        
        self.workspace = attributes[:'workspace']
        
      
      end

      
      if attributes.has_key?(:'createdBy')
        
        
        self.created_by = attributes[:'createdBy']
        
      
      end

      
      if attributes.has_key?(:'uploadedBy')
        
        
        self.uploaded_by = attributes[:'uploadedBy']
        
      
      end

      
      if attributes.has_key?(:'contentType')
        
        
        self.content_type = attributes[:'contentType']
        
      
      end

      
      if attributes.has_key?(:'contentLength')
        
        
        self.content_length = attributes[:'contentLength']
        
      
      end

      
      if attributes.has_key?(:'systemType')
        
        
        self.system_type = attributes[:'systemType']
        
      
      end

      
      if attributes.has_key?(:'filename')
        
        
        self.filename = attributes[:'filename']
        
      
      end

      
      if attributes.has_key?(:'pageCount')
        
        
        self.page_count = attributes[:'pageCount']
        
      
      end

      
      if attributes.has_key?(:'read')
        
        
        self.read = attributes[:'read']
        
      
      end

      
      if attributes.has_key?(:'callerAddress')
        
        
        self.caller_address = attributes[:'callerAddress']
        
      
      end

      
      if attributes.has_key?(:'receiverAddress')
        
        
        self.receiver_address = attributes[:'receiverAddress']
        
      
      end

      
      if attributes.has_key?(:'tags')
        
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'tagValues')
        
        if (value = attributes[:'tagValues']).is_a?(Array)
          self.tag_values = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'attributes')
        
        if (value = attributes[:'attributes']).is_a?(Array)
          self.attributes = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'thumbnails')
        
        if (value = attributes[:'thumbnails']).is_a?(Array)
          self.thumbnails = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'uploadStatus')
        
        
        self.upload_status = attributes[:'uploadStatus']
        
      
      end

      
      if attributes.has_key?(:'uploadDestinationUri')
        
        
        self.upload_destination_uri = attributes[:'uploadDestinationUri']
        
      
      end

      
      if attributes.has_key?(:'uploadMethod')
        
        
        self.upload_method = attributes[:'uploadMethod']
        
      
      end

      
      if attributes.has_key?(:'lockInfo')
        
        
        self.lock_info = attributes[:'lockInfo']
        
      
      end

      
      if attributes.has_key?(:'acl')
        
        if (value = attributes[:'acl']).is_a?(Array)
          self.acl = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'sharingStatus')
        
        
        self.sharing_status = attributes[:'sharingStatus']
        
      
      end

      
      if attributes.has_key?(:'sharingUri')
        
        
        self.sharing_uri = attributes[:'sharingUri']
        
      
      end

      
      if attributes.has_key?(:'downloadSharingUri')
        
        
        self.download_sharing_uri = attributes[:'downloadSharingUri']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["DOCUMENT", "FAX", "RECORDING"]
      if @system_type && !allowed_values.include?(@system_type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["SINGLE_PUT", "MULTIPART_POST"]
      if @upload_method && !allowed_values.include?(@upload_method)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["NONE", "LIMITED", "PUBLIC"]
      if @sharing_status && !allowed_values.include?(@sharing_status)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] system_type Object to be assigned
    def system_type=(system_type)
      allowed_values = ["DOCUMENT", "FAX", "RECORDING"]
      if system_type && !allowed_values.include?(system_type)
        fail ArgumentError, "invalid value for 'system_type', must be one of #{allowed_values}."
      end
      @system_type = system_type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] upload_method Object to be assigned
    def upload_method=(upload_method)
      allowed_values = ["SINGLE_PUT", "MULTIPART_POST"]
      if upload_method && !allowed_values.include?(upload_method)
        fail ArgumentError, "invalid value for 'upload_method', must be one of #{allowed_values}."
      end
      @upload_method = upload_method
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sharing_status Object to be assigned
    def sharing_status=(sharing_status)
      allowed_values = ["NONE", "LIMITED", "PUBLIC"]
      if sharing_status && !allowed_values.include?(sharing_status)
        fail ArgumentError, "invalid value for 'sharing_status', must be one of #{allowed_values}."
      end
      @sharing_status = sharing_status
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          change_number == o.change_number &&
          date_created == o.date_created &&
          date_modified == o.date_modified &&
          date_uploaded == o.date_uploaded &&
          content_uri == o.content_uri &&
          workspace == o.workspace &&
          created_by == o.created_by &&
          uploaded_by == o.uploaded_by &&
          content_type == o.content_type &&
          content_length == o.content_length &&
          system_type == o.system_type &&
          filename == o.filename &&
          page_count == o.page_count &&
          read == o.read &&
          caller_address == o.caller_address &&
          receiver_address == o.receiver_address &&
          tags == o.tags &&
          tag_values == o.tag_values &&
          attributes == o.attributes &&
          thumbnails == o.thumbnails &&
          upload_status == o.upload_status &&
          upload_destination_uri == o.upload_destination_uri &&
          upload_method == o.upload_method &&
          lock_info == o.lock_info &&
          acl == o.acl &&
          sharing_status == o.sharing_status &&
          sharing_uri == o.sharing_uri &&
          download_sharing_uri == o.download_sharing_uri &&
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
      [id, name, change_number, date_created, date_modified, date_uploaded, content_uri, workspace, created_by, uploaded_by, content_type, content_length, system_type, filename, page_count, read, caller_address, receiver_address, tags, tag_values, attributes, thumbnails, upload_status, upload_destination_uri, upload_method, lock_info, acl, sharing_status, sharing_uri, download_sharing_uri, self_uri].hash
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
