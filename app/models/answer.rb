class Answer < ActiveRecord::Base
	validates :content, presence: true
	validates :question_id, presence: true
	validates :author, presence: true

	belongs_to :author, class_name: "User"
  	belongs_to :question_id, class_name: "Question"

end
