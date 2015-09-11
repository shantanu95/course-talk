class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :question
      t.belongs_to :answer
      t.belongs_to :user
      t.text :body

      t.timestamps null: false
    end
  end
end
