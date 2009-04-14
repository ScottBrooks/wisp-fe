require 'test_helper'

class L1NodesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:l1_nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create l1_node" do
    assert_difference('L1Node.count') do
      post :create, :l1_node => { }
    end

    assert_redirected_to l1_node_path(assigns(:l1_node))
  end

  test "should show l1_node" do
    get :show, :id => l1_nodes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => l1_nodes(:one).to_param
    assert_response :success
  end

  test "should update l1_node" do
    put :update, :id => l1_nodes(:one).to_param, :l1_node => { }
    assert_redirected_to l1_node_path(assigns(:l1_node))
  end

  test "should destroy l1_node" do
    assert_difference('L1Node.count', -1) do
      delete :destroy, :id => l1_nodes(:one).to_param
    end

    assert_redirected_to l1_nodes_path
  end
end
