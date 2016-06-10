class CreateRecumes < ActiveRecord::Migration
  def change
    create_table :recumes do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
