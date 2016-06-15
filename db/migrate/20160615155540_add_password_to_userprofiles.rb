class AddPasswordToUserprofiles < ActiveRecord::Migration
  def change
    add_column :userprofiles, :password_digest, :string
  end
end
