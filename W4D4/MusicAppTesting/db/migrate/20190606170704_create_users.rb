class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :users, :email, null: false
      t.string :users, :password_digest, null: false
      t.string :users, :session_token, null: false
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :session_token, unique: true
  end
end
