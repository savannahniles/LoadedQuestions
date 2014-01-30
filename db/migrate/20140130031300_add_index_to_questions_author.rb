class AddIndexToQuestionsAuthor < ActiveRecord::Migration
  def change
  	add_index :questions, :author
  	add_index :answers, :author
  	add_index :answers, :question
  end
end
