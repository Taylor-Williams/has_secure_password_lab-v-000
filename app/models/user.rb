class User < ActiveRecord::Base
  has_secure_password
  def authenticate
    self.password_confirmation == self.password ? self : nil
  end
end
