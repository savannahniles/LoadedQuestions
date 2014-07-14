class User < ActiveRecord::Base
	before_create :create_remember_token
	
	attr_accessor :name, :email
	validates :first_name, presence: true
	validates :last_name, presence: true

	has_many :questions, dependent: :destroy
  has_many :answers, foreign_key: "author", dependent: :destroy

	has_secure_password
	validates :password, length: { minimum: 6 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def answered?(question)
    answers.find_by(question: question.id)
  end

  def answer!(question, content)
    answers.create!(question: question.id, content: content)
  end

  def delete_answer!(question)
    answers.find_by(question: question.id).destroy
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
