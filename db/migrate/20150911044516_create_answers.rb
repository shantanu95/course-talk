class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question
      t.belongs_to :user
      t.text :body
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps null: false
    end
  end
end
