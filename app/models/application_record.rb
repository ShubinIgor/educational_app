class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
end
