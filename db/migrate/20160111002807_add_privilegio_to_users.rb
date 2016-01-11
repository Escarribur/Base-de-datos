class AddPrivilegioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :privilegio, :string
  end
end
