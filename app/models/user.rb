class User < ActiveRecord::Base
	before_create :create_remember_token
	
	attr_accessor :name, :email
	validates :first_name, presence: true
	validates :last_name, presence: true

	#has_many :answers
	has_secure_password
	validates :password, length: { minimum: 6 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
