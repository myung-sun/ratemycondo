class AddLatitudeToLinks < ActiveRecord::Migration
  def change
    add_column :links, :latitude, :float
  end
end
