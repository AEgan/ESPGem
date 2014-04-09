require 'net/http'
require 'json'
module ESPGem
  module Athletes
    # gets the athletes for the sport specified
    # for now must provide the sport and league, and I'm not checking for errors LOL
    def self.get_athletes(options = {})
      api_key = ESPGem::Auth.api_key
      request_url = "http://api.espn.com/v1/sports/#{options[:sport]}/#{options[:league]}/athletes?apikey=#{api_key}"
      uri = URI(request_url)
      res = Net::HTTP.get(uri)
      JSON.parse(res)
    end
  end
end
