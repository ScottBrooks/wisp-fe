class L1Node < ActiveRecord::Base
	has_dag_links :link_class_name=>'Link'
	has_one :location
	has_one :device
end
