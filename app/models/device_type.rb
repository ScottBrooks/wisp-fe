class DeviceType < ActiveRecord::Base

	def desc
		"#{name} - #{model}"
	end
end
