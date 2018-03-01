class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :firstName
      t.string :lastName
      t.string :title
      t.integer :manager_id

      t.timestamps
    end
  end
end
