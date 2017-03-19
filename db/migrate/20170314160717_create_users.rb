class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :email
      t.integer :status
      t.integer :created_by
      t.datetime :created_at
      t.integer :updated_by
      t.datetime :updated_at

      t.timestamps
      t.index :username, unique:true
      t.index :email, unique:true
    end
  end
end
