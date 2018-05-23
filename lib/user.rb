require 'bcrypt'
require 'data_mapper'

class User

  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :email, String
  property :password, BCryptHash

  def self.crypt_password(password)
    BCrypt::Password.create(password)
  end

  # def self.auth_password(password)
  #   BCrypt::Password.new(BCrypt::Password.create(password)) == password
  # end

end
