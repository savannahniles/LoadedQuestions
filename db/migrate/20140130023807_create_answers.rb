class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :author
      t.integer :question

      t.timestamps
    end
  end
end
