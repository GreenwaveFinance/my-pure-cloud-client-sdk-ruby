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
  class WebEvent
    # Represents the action the customer performed. A good event name is typically an object followed by the action performed in past tense (e.g. page_viewed, order_completed, user_registered).
    attr_accessor :event_name

    # The total count of events performed by the customer across all sessions.
    attr_accessor :total_event_count

    # The total count of pageviews performed by the customer across all sessions.
    attr_accessor :total_pageview_count

    # The webpage where the user interaction occurred.
    attr_accessor :page

    # HTTP User-Agent string (see https://tools.ietf.org/html/rfc1945#section-10.15).
    attr_accessor :user_agent_string

    # Customer's browser.
    attr_accessor :browser

    # Customer's device.
    attr_accessor :device

    # Customer's geolocation.
    attr_accessor :geolocation

    # Customer's IP address. May be null if the business configures the tracker to not collect IP addresses.
    attr_accessor :ip_address

    # Customer's IP-based organization or ISP name.
    attr_accessor :ip_organization

    # Marketing / traffic source information.
    attr_accessor :mkt_campaign

    # Identifies the page URL that originally generated the request for the current page being viewed.
    attr_accessor :referrer

    # User-defined attributes associated with a particular event.
    attr_accessor :attributes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'event_name' => :'eventName',
        
        :'total_event_count' => :'totalEventCount',
        
        :'total_pageview_count' => :'totalPageviewCount',
        
        :'page' => :'page',
        
        :'user_agent_string' => :'userAgentString',
        
        :'browser' => :'browser',
        
        :'device' => :'device',
        
        :'geolocation' => :'geolocation',
        
        :'ip_address' => :'ipAddress',
        
        :'ip_organization' => :'ipOrganization',
        
        :'mkt_campaign' => :'mktCampaign',
        
        :'referrer' => :'referrer',
        
        :'attributes' => :'attributes'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'event_name' => :'String',
        
        :'total_event_count' => :'Integer',
        
        :'total_pageview_count' => :'Integer',
        
        :'page' => :'JourneyPage',
        
        :'user_agent_string' => :'String',
        
        :'browser' => :'Browser',
        
        :'device' => :'Device',
        
        :'geolocation' => :'JourneyGeolocation',
        
        :'ip_address' => :'String',
        
        :'ip_organization' => :'String',
        
        :'mkt_campaign' => :'JourneyCampaign',
        
        :'referrer' => :'Referrer',
        
        :'attributes' => :'Hash<String, CustomEventAttribute>'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'eventName')
        
        
        self.event_name = attributes[:'eventName']
        
      
      end

      
      if attributes.has_key?(:'totalEventCount')
        
        
        self.total_event_count = attributes[:'totalEventCount']
        
      
      end

      
      if attributes.has_key?(:'totalPageviewCount')
        
        
        self.total_pageview_count = attributes[:'totalPageviewCount']
        
      
      end

      
      if attributes.has_key?(:'page')
        
        
        self.page = attributes[:'page']
        
      
      end

      
      if attributes.has_key?(:'userAgentString')
        
        
        self.user_agent_string = attributes[:'userAgentString']
        
      
      end

      
      if attributes.has_key?(:'browser')
        
        
        self.browser = attributes[:'browser']
        
      
      end

      
      if attributes.has_key?(:'device')
        
        
        self.device = attributes[:'device']
        
      
      end

      
      if attributes.has_key?(:'geolocation')
        
        
        self.geolocation = attributes[:'geolocation']
        
      
      end

      
      if attributes.has_key?(:'ipAddress')
        
        
        self.ip_address = attributes[:'ipAddress']
        
      
      end

      
      if attributes.has_key?(:'ipOrganization')
        
        
        self.ip_organization = attributes[:'ipOrganization']
        
      
      end

      
      if attributes.has_key?(:'mktCampaign')
        
        
        self.mkt_campaign = attributes[:'mktCampaign']
        
      
      end

      
      if attributes.has_key?(:'referrer')
        
        
        self.referrer = attributes[:'referrer']
        
      
      end

      
      if attributes.has_key?(:'attributes')
        
        if (value = attributes[:'attributes']).is_a?(Array)
          self.attributes = value
        end
        
        
      
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
      
      
      if @event_name.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          event_name == o.event_name &&
          total_event_count == o.total_event_count &&
          total_pageview_count == o.total_pageview_count &&
          page == o.page &&
          user_agent_string == o.user_agent_string &&
          browser == o.browser &&
          device == o.device &&
          geolocation == o.geolocation &&
          ip_address == o.ip_address &&
          ip_organization == o.ip_organization &&
          mkt_campaign == o.mkt_campaign &&
          referrer == o.referrer &&
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
      [event_name, total_event_count, total_pageview_count, page, user_agent_string, browser, device, geolocation, ip_address, ip_organization, mkt_campaign, referrer, attributes].hash
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