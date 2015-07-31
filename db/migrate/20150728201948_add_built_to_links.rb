class AddBuiltToLinks < ActiveRecord::Migration
  def change
    add_column :links, :built, :integer
  end
end
