class Question < ActiveRecord::Base
	validates :content, presence: true, uniqueness: true
	

	has_many :answers, dependent: :destroy
	has_many :reverse_answers, class_name:  "Answer", dependent:   :destroy
  	has_many :users, through: :reverse_answers
  	#has_many :users, through: :answers
end
