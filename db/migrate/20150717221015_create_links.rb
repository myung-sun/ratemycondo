class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :streetaddress
      t.string :regionaladdress
      t.string :averageprice
      t.string :bedroom, array: true, default: []

      t.timestamps null: false
    end
  end
end
