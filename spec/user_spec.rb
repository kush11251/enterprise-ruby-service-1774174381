require 'rack/test'
require 'rspec'
require_relative '../app'

RSpec.describe 'User workflow' do
  include Rack::Test::Methods
  def app; App.new; end

  it 'returns status ok' do
    get '/status'
    expect(last_response).to be_ok
  end
end
