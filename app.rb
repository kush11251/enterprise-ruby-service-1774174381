require 'sinatra/base'
require_relative 'lib/user_controller'

class App < Sinatra::Base
  use UserController
  get '/status' do
    content_type :json
    { status: 'ok' }.to_json
  end
end
