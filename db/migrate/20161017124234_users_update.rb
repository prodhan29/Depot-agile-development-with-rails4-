class UsersUpdate < ActiveRecord::Migration[5.0]

  def up
    add_column :users, :password, :string
  end

  def down
    remove_column :users, :password
  end
end
