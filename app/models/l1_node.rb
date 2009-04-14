class L1Node < ActiveRecord::Base
	has_dag_links :link_class_name=>'Link'
	belongs_to :location
	belongs_to :device
end
