class CreateL1Nodes < ActiveRecord::Migration
  def self.up
    create_table :l1_nodes do |t|
			t.string	:description
			t.string	:name
			t.integer :location_id
			t.integer :device_id
			t.integer :link_speed
			t.integer :real_link_speed

      t.timestamps
    end
  end

  def self.down
    drop_table :l1_nodes
  end
end
