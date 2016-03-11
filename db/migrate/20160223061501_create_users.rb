 class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :crypted_password
      t.string :password_salt
      t.string :persistance_tocken
      t.timestamps null: false
    end
  end
end
