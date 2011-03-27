class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login, :null => false
      t.string :persistence_token
      t.string :crypted_password
      t.string :password_salt
      t.string :single_access_token

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
