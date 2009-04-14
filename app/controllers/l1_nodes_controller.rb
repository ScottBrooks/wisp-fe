class L1NodesController < ApplicationController
  # GET /l1_nodes
  # GET /l1_nodes.xml
  def index
    @l1_nodes = L1Node.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @l1_nodes }
    end
  end

  # GET /l1_nodes/1
  # GET /l1_nodes/1.xml
  def show
    @l1_node = L1Node.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @l1_node }
    end
  end

  # GET /l1_nodes/new
  # GET /l1_nodes/new.xml
  def new
    @l1_node = L1Node.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @l1_node }
    end
  end

  # GET /l1_nodes/1/edit
  def edit
    @l1_node = L1Node.find(params[:id])
  end

  # POST /l1_nodes
  # POST /l1_nodes.xml
  def create
    @l1_node = L1Node.new(params[:l1_node])

    respond_to do |format|
      if @l1_node.save
        flash[:notice] = 'L1Node was successfully created.'
        format.html { redirect_to(@l1_node) }
        format.xml  { render :xml => @l1_node, :status => :created, :location => @l1_node }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @l1_node.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /l1_nodes/1
  # PUT /l1_nodes/1.xml
  def update
    @l1_node = L1Node.find(params[:id])

    respond_to do |format|
      if @l1_node.update_attributes(params[:l1_node])
        flash[:notice] = 'L1Node was successfully updated.'
        format.html { redirect_to(@l1_node) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @l1_node.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /l1_nodes/1
  # DELETE /l1_nodes/1.xml
  def destroy
    @l1_node = L1Node.find(params[:id])
    @l1_node.destroy

    respond_to do |format|
      format.html { redirect_to(l1_nodes_url) }
      format.xml  { head :ok }
    end
  end
end
