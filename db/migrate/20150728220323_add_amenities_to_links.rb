class AddAmenitiesToLinks < ActiveRecord::Migration
  def change
    add_column :links, :amenities, :string, array: true, default: []
  end
end
