class User < ActiveRecord::Base
  def authenticate
    self.password_confirmation == self.password ? self : nil
  end
end
