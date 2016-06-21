class AddProfileurlToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :profileurl, :string
  end
end
