class NetworkController < ApplicationController
  def index
		@nodes = L1Node.find :all
  end

	def add_node
		@locations = Location.find :all, :order=>'name'
		@device_types = DeviceType.find :all, :order=>'name'
		if request.post?
			@node = L1Node.new(params[:l1_node])
			@node.device = @node.build_device(params[:device])
			if @node.save
				redirect_to :action=>'index'
			end
		end
	end

	def setup_links
		@nodes = L1Node.find :all
		@unconnected, @connected = @nodes.partition{|n| n.root? }

	end

	def connect
		@node = L1Node.find params[:id]
		@nodes = L1Node.find :all, :order=>:name
	end

	def create_link
		@node = L1Node.find params[:id]
		@child = L1Node.find params[:link]

		Link.connect(@child, @node)

		redirect_to :action=>:connect, :id=>@node
	end

	def destroy_link
		@node = L1Node.find params[:id]
		@parent = L1Node.find params[:link]

		link = Link.find_link(@parent, @node)
		if link.destroyable?
			link.destroy
		else
			link.make_indirect
			link.save!
		end

		redirect_to :action=>:connect, :id=>@node
	end

	def graphviz
		@nodes = L1Node.find :all
		@head = @nodes.find{|n| n.root? }
	
	end
end
