class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.integer :user_id
      t.integer :likes
      t.string :comments
      t.string :description

      t.timestamps null: false
    end
  end
end
