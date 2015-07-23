require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  def password= (password_string)
    @password = BCrypt::Password.create(password_string)
    self.password_hash = @password
  end

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def self.authenticate(entered_name,entered_password)
    current_user = User.find_by name: entered_name
    return nil if current_user == nil
    if current_user.password == entered_password
      return current_user
    else
      return nil
    end
  end

end
