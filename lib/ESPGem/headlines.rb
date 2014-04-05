require 'net/http'
require 'json'
# Code to get top headlines will go here
module ESPGem
	class Headlines

		# gets the headlines for the sport specified
		# for now must provide the sport and league, and I'm not checking for errors LOL
		def self.get_headlines(options = {})
			api_key = ESPGem::Auth.api_key
			request_url = "http://api.espn.com/v1/sports/#{options[:sport]}/#{options[:league]}?apikey=#{api_key}"
			uri = URI(request_url)
			res = Net::HTTP.get(uri)
			JSON.parse(res)
		end

		# get the top headlines from ESPN
		def self.get_top_headlines
			api_key = ESPGem::Auth.api_key
			request_url = "http://api.espn.com/v1/sports/news/headlines/top?apikey=#{api_key}"
			uri = URI(request_url)
			res = Net::HTTP.get(uri)
			JSON.parse(res)
		end

		# so I should look to rename this, but for now this is a GET for
		# http://api.espn.com/v1/sports/news/headlines, the first specifies a sport and league
		def self.get_all_headlines
			api_key = ESPGem::Auth.api_key
			request_url = "http://api.espn.com/v1/sports/news/headlines?apikey=#{api_key}"
			uri = URI(request_url)
			res = Net::HTTP.get(uri)
			JSON.parse(res)
		end

	end
end
