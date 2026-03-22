require 'sinatra/base'
require_relative 'user_service'

class UserController < Sinatra::Base
  def initialize(app=nil)
    super(app)
    @service = UserService.new
  end

  get '/users' do
    content_type :json
    @service.list.map { |u| {id: u.id, username: u.username, email: u.email }}.to_json
  end
end
