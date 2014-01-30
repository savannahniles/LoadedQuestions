class User < ActiveRecord::Base
	
	attr_accessor :name, :email
	validates :first_name, presence: true
	validates :last_name, presence: true

	has_many :answers
	has_secure_password
	validates :password, length: { minimum: 6 }
end
