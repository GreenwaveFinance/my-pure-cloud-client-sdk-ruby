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
  class SystemPromptAsset
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    attr_accessor :prompt_id

    # The asset resource language
    attr_accessor :language

    attr_accessor :duration_seconds

    attr_accessor :media_uri

    attr_accessor :tts_string

    attr_accessor :text

    attr_accessor :upload_uri

    attr_accessor :upload_status

    attr_accessor :has_default

    attr_accessor :language_default

    attr_accessor :tags

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'prompt_id' => :'promptId',
        
        :'language' => :'language',
        
        :'duration_seconds' => :'durationSeconds',
        
        :'media_uri' => :'mediaUri',
        
        :'tts_string' => :'ttsString',
        
        :'text' => :'text',
        
        :'upload_uri' => :'uploadUri',
        
        :'upload_status' => :'uploadStatus',
        
        :'has_default' => :'hasDefault',
        
        :'language_default' => :'languageDefault',
        
        :'tags' => :'tags',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'prompt_id' => :'String',
        
        :'language' => :'String',
        
        :'duration_seconds' => :'Float',
        
        :'media_uri' => :'String',
        
        :'tts_string' => :'String',
        
        :'text' => :'String',
        
        :'upload_uri' => :'String',
        
        :'upload_status' => :'String',
        
        :'has_default' => :'BOOLEAN',
        
        :'language_default' => :'BOOLEAN',
        
        :'tags' => :'Hash<String, Array<String>>',
        
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

      
      if attributes.has_key?(:'promptId')
        
        
        self.prompt_id = attributes[:'promptId']
        
      
      end

      
      if attributes.has_key?(:'language')
        
        
        self.language = attributes[:'language']
        
      
      end

      
      if attributes.has_key?(:'durationSeconds')
        
        
        self.duration_seconds = attributes[:'durationSeconds']
        
      
      end

      
      if attributes.has_key?(:'mediaUri')
        
        
        self.media_uri = attributes[:'mediaUri']
        
      
      end

      
      if attributes.has_key?(:'ttsString')
        
        
        self.tts_string = attributes[:'ttsString']
        
      
      end

      
      if attributes.has_key?(:'text')
        
        
        self.text = attributes[:'text']
        
      
      end

      
      if attributes.has_key?(:'uploadUri')
        
        
        self.upload_uri = attributes[:'uploadUri']
        
      
      end

      
      if attributes.has_key?(:'uploadStatus')
        
        
        self.upload_status = attributes[:'uploadStatus']
        
      
      end

      
      if attributes.has_key?(:'hasDefault')
        
        
        self.has_default = attributes[:'hasDefault']
        
      
      end

      
      if attributes.has_key?(:'languageDefault')
        
        
        self.language_default = attributes[:'languageDefault']
        
      
      end

      
      if attributes.has_key?(:'tags')
        
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @language.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["created", "uploaded", "transcoded"]
      if @upload_status && !allowed_values.include?(@upload_status)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] upload_status Object to be assigned
    def upload_status=(upload_status)
      allowed_values = ["created", "uploaded", "transcoded"]
      if upload_status && !allowed_values.include?(upload_status)
        fail ArgumentError, "invalid value for 'upload_status', must be one of #{allowed_values}."
      end
      @upload_status = upload_status
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          prompt_id == o.prompt_id &&
          language == o.language &&
          duration_seconds == o.duration_seconds &&
          media_uri == o.media_uri &&
          tts_string == o.tts_string &&
          text == o.text &&
          upload_uri == o.upload_uri &&
          upload_status == o.upload_status &&
          has_default == o.has_default &&
          language_default == o.language_default &&
          tags == o.tags &&
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
      [id, name, prompt_id, language, duration_seconds, media_uri, tts_string, text, upload_uri, upload_status, has_default, language_default, tags, self_uri].hash
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
