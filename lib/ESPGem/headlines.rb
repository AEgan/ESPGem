require 'net/http'
require 'json'
# Code to get top headlines will go here
module ESPGem
	class Headlines

		# gets the headlines for the sport specified
		# for now must provide the sport and league, and I'm not checking for errors LOL
		def self.get_headlines(options = {})
			request_url = "http://api.espn.com/v1/sports/#{options[:sport]}/#{options[:league]}?apikey=#{@api_key}"
			uri = URI(request_url)
			res = Net::HTTP.get(uri)
			JSON.parse(res)
		end

	end
end
