class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :tel, null: false
      t.integer :gender, null: false, default: 2
      t.timestamps null: false
    end
  end
end
