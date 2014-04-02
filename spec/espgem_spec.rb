require 'spec_helper'

describe ESPGem do
  it 'has a headlines method that takes an api key and for now returns it until I actually do something with it' do
    ESPGem::Headlines.get_headlines("abcde12345").should.eql?("abcde12345")
  end

end
