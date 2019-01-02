class User < ActiveRecord::Base
  validate :password_validator

  def password_validator
    self.password_confirmation == self.password if self.password_confirmation
  end
end
