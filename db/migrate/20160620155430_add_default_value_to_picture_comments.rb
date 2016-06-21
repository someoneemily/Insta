class AddDefaultValueToPictureComments < ActiveRecord::Migration
  def change
  	change_column :pictures, :comments, :string, :default=>"no comments added"
  	Picture.update_all(comments:"no comments added")
  end
end
