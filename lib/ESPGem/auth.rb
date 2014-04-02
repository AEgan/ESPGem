module ESPGem
  module Auth
    # sets the API key
    def self.api_key=(key)
      @api_key = key
      @api_key
    end

    # gets the API key
    def self.api_key
      @api_key
    end
  end
end
