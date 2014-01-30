class Question < ActiveRecord::Base
	validates :content, presence: true, uniqueness: true
	has_many :answers
end
