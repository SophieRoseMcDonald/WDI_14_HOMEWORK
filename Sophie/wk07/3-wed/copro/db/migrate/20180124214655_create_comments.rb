class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :body
      t.integer :project_id

      t.timestamps
    end
  end
end
