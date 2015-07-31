class AddLongitudeToLinks < ActiveRecord::Migration
  def change
    add_column :links, :longitude, :float
  end
end
