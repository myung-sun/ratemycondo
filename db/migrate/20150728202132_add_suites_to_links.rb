class AddSuitesToLinks < ActiveRecord::Migration
  def change
    add_column :links, :suites, :integer
  end
end
