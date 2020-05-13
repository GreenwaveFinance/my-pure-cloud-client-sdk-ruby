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
  class KnowledgeSearchRequest
    # Input query to search content in the knowledge base
    attr_accessor :query

    # Page size of the returned results
    attr_accessor :page_size

    # Page number of the returned results
    attr_accessor :page_number

    # Document type to be used while searching
    attr_accessor :document_type

    # query search for specific languageCode
    attr_accessor :language_code

    # If true the search query will be executed on draft documents, else it will be on active documents
    attr_accessor :search_on_draft_documents

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'query' => :'query',
        
        :'page_size' => :'pageSize',
        
        :'page_number' => :'pageNumber',
        
        :'document_type' => :'documentType',
        
        :'language_code' => :'languageCode',
        
        :'search_on_draft_documents' => :'searchOnDraftDocuments'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'query' => :'String',
        
        :'page_size' => :'Integer',
        
        :'page_number' => :'Integer',
        
        :'document_type' => :'String',
        
        :'language_code' => :'String',
        
        :'search_on_draft_documents' => :'BOOLEAN'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'query')
        
        
        self.query = attributes[:'query']
        
      
      end

      
      if attributes.has_key?(:'pageSize')
        
        
        self.page_size = attributes[:'pageSize']
        
      
      end

      
      if attributes.has_key?(:'pageNumber')
        
        
        self.page_number = attributes[:'pageNumber']
        
      
      end

      
      if attributes.has_key?(:'documentType')
        
        
        self.document_type = attributes[:'documentType']
        
      
      end

      
      if attributes.has_key?(:'languageCode')
        
        
        self.language_code = attributes[:'languageCode']
        
      
      end

      
      if attributes.has_key?(:'searchOnDraftDocuments')
        
        
        self.search_on_draft_documents = attributes[:'searchOnDraftDocuments']
        
      
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
      
      
      if @query.nil?
        return false
      end

      
      
      
      
      
      if @page_size.nil?
        return false
      end

      
      
      
      
      
      if @page_number.nil?
        return false
      end

      
      
      
      
      
      if @document_type.nil?
        return false
      end

      
      
      allowed_values = ["Faq"]
      if @document_type && !allowed_values.include?(@document_type)
        return false
      end
      
      
      
      
      if @language_code.nil?
        return false
      end

      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document_type Object to be assigned
    def document_type=(document_type)
      allowed_values = ["Faq"]
      if document_type && !allowed_values.include?(document_type)
        fail ArgumentError, "invalid value for 'document_type', must be one of #{allowed_values}."
      end
      @document_type = document_type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          query == o.query &&
          page_size == o.page_size &&
          page_number == o.page_number &&
          document_type == o.document_type &&
          language_code == o.language_code &&
          search_on_draft_documents == o.search_on_draft_documents
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [query, page_size, page_number, document_type, language_code, search_on_draft_documents].hash
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
