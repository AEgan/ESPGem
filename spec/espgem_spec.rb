require 'spec_helper'

describe ESPGem do
  # test that it lets you set the api key
  it 'has a way to set your API key' do
    ESPGem::Auth.api_key=("abcde12345").should.eql?("abcde12345")
  end

  # test that it lets you get the api key. Also let's see if it gets set for a while
  it 'has a way to get the API key that has been submitted' do
    ESPGem::Auth.api_key.should.eql?("abcde12345")
  end

  it 'has a way to get a hash of the headlines for a given sport and a given league' do
    options = Hash.new
    options[:sport] = "hockey"
    options[:league] = "nhl"
    ESPGem::Headlines.get_headlines(options).class.should.eql?(options.class)
  end
end
