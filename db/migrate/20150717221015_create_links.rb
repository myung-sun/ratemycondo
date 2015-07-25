class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :address
      t.string :bedroom, array: true, default: []

      t.timestamps null: false
    end
  end
end
