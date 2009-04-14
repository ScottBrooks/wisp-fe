class AddDeviceTypeToDevice < ActiveRecord::Migration
  def self.up
		add_column :devices, :device_type_id, :integer
  end

  def self.down
		remove_column :devices, :device_type_id
  end
end
