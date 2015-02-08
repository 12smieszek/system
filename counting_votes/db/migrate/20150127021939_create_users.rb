class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :crypted_password
      t.boolean :admin
      t.references :constituency, index: true
      t.string :persistence_token

      t.timestamps null: false
    end
    add_foreign_key :users, :constituencies
  end
end
