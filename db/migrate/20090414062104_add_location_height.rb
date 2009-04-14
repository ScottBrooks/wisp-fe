class AddLocationHeight < ActiveRecord::Migration
  def self.up
		add_column :locations, :height, :float
  end

  def self.down
		remove_column :locations, :height
  end
end
