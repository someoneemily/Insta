class AddDefault < ActiveRecord::Migration
  def change 
  	change_column :pictures, :likes, :integer, :default=>0
  	change_column :pictures, :comments, :string, :default=>"no comments added"
  	Picture.update_all(likes:0)
  	Picture.update_all(comments:"no comments added")
  end
end
