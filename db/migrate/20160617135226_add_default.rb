class AddDefault < ActiveRecord::Migration
  def change 
  	change_column :pictures, :likes, :integer, :default=>0
  	Picture.update_all(likes:0)
  end
end
