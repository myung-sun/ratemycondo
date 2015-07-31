class AddFloorsToLinks < ActiveRecord::Migration
  def change
    add_column :links, :floors, :integer
  end
end
