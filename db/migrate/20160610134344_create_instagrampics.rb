class CreateInstagrampics < ActiveRecord::Migration
  def change
    create_table :instagrampics do |t|
      t.string :photo_url
      t.string :description
      t.integer :followers
      t.timestamps null: false

    end
  end
end
