class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.string :name
      t.string :description
      t.string :followers
      t.string :following
      t.string :profilepic

      t.timestamps null: false
    end
  end
end
