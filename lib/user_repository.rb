require_relative 'user'

class UserRepository
  def initialize
    @users = [User.new(id: 1, username: 'alpha', email: 'alpha@example.com')]
  end

  def all
    @users.dup
  end

  def find(id)
    @users.find { |u| u.id == id }
  end

  def create(attrs)
    id = @users.last.id + 1
    user = User.new(id: id, username: attrs[:username], email: attrs[:email])
    @users << user
    user
  end
end
