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

  # test get_headlines with hockey
  it 'has a way to get a hash of the headlines for a given sport and a given league' do
    ESPGem::Auth.api_key=("w4v8qt4yachkcugkveemsxem")
    options = {sport: 'hockey', league: 'nhl'}
    res = ESPGem::Headlines.get_headlines(options)
    res.should be_a_kind_of(Hash)
    expect(res['status']).to eq('success')
    expect(res['sports'][0]['name']).to eq('hockey')
    expect(res['sports'][0]['leagues'][0]['name']).to eq('National Hockey League')
  end

  # test get_headlines with baseball
  it 'has a way to get a hash of the headlines for mlb baseball' do
    ESPGem::Auth.api_key=('w4v8qt4yachkcugkveemsxem')
    options = {sport: "baseball", league: "mlb"}
    res = ESPGem::Headlines.get_headlines(options)
    res.should be_a_kind_of(Hash)
    expect(res['status']).to eq('success')
    expect(res['sports'][0]['name']).to eq('baseball')
    expect(res['sports'][0]['leagues'][0]['name']).to eq('Major League Baseball')
  end

  # tests the get top headlines method
  it 'has a way to get the top headlines from ESPN' do
    ESPGem::Auth.api_key=('w4v8qt4yachkcugkveemsxem')
    res = ESPGem::Headlines.get_top_headlines
    res.should be_a_kind_of(Hash)
    expect(res['status']).to eq('success')
    res['headlines'].should be_a_kind_of(Array)
    # not sure the best way to test this here
    res['headlines'][0].should be_a_kind_of(Hash)
  end


end
