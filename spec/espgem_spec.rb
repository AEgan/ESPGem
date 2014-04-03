require 'spec_helper'

describe ESPGem do
  # test that it lets you set the api key
  it 'has a way to set your API key' do
    ESPGem::Auth.api_key=("w4v8qt4yachkcugkveemsxem").should.eql?("w4v8qt4yachkcugkveemsxem")
  end

  # test that it lets you get the api key. Also let's see if it gets set for a while
  it 'has a way to get the API key that has been submitted' do
    ESPGem::Auth.api_key.should.eql?("w4v8qt4yachkcugkveemsxem")
  end

  it 'has a way to get a hash of the headlines for a given sport and a given league' do
    ESPGem::Auth.api_key=("w4v8qt4yachkcugkveemsxem")
    options = Hash.new
    options[:sport] = "hockey"
    options[:league] = "nhl"
    options[:api_key] = ESPGem::Auth.api_key
    res = ESPGem::Headlines.get_headlines(options)
    res.should be_a_kind_of(Hash)
    expect(res['status']).to eq("success")
  end
end
