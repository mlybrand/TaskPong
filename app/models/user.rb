class User < ActiveRecord::Base
	attr_accessible :username, :email, :password, :password_confirmation
	has_secure_password

	VALID_USERNAME_PATTERN = /\A[0-9a-z_-]+\z/i
	validates :username, presence: true, length: { maximum: 50 }, 
					     format: { with: VALID_USERNAME_PATTERN }, 
					     uniqueness: { case_sensitive: false }
	VALID_EMAIL_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_PATTERN },
					  uniqueness: { case_sensitive: false }
  	VALID_PASSWORD_PATTERN = /\A.*(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(.*[\W_]).*\z/
	validates :password, length: { minimum: 8 }, 
						 format: { with: VALID_PASSWORD_PATTERN, 
						 		   message: "must contain at least 1 lowercase letter, 1 uppercase letter, 1 digit and 1 special character"}  
  	validates :password_confirmation, presence: true
end
