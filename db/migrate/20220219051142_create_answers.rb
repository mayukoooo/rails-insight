class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.text :answer

      t.timestamps
    end
  end
end
