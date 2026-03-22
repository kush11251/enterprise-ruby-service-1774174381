require_relative 'user_repository'

class UserService
  def initialize(repo = UserRepository.new)
    @repo = repo
  end

  def list
    @repo.all
  end

  def create(username, email)
    @repo.create(username: username, email: email)
  end
end
