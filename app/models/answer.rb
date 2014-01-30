class Answer < ActiveRecord::Base
	validates :content, presence: true
	validates :question, presence: true
	validates :author, presence: true

	#belongs_to :user
	#belongs_to :question

end
