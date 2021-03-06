class User < ActiveRecord::Base

has_many :questions

validates :username, presence: true, uniqueness: { case_sensitive: false }, 
		length: { minimum: 3, maximum: 21 }

		VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
validates :email, presence: true, 
length: { maximum: 100 }, 
		uniqueness: { case_sensitive: false }, 
		format: { with: VALID_EMAIL_REGEX }

		has_secure_password


end 