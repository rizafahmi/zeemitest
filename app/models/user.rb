class User < ActiveRecord::Base
  attr_accessor :password
  before_save :encrypt_password

  validates :password, :confirmation => true, length: {minimum: 4}, on: :create
  validates :email, presence: true, uniqueness:  true

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
