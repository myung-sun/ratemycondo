class AddAvgRatingToLinks < ActiveRecord::Migration
  def change
    add_column :links, :avg_rating, :float, default: 0
  end
end
