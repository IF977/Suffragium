class Teste < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :encrypted_password, :string
    add_column :users, :salt, :string
    rename_column :users, :login, :username
  end
end
