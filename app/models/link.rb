class Link < ActiveRecord::Base
	acts_as_dag_links :polymorphic=>true
end
