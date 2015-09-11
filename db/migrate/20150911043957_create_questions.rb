class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.integer :no_of_views
      t.belongs_to :course
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
