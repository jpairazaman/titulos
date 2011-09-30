require 'test_helper'

class EditorialesControllerTest < ActionController::TestCase
  setup do
    @editorial = editoriales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:editoriales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create editorial" do
    assert_difference('Editorial.count') do
      post :create, :editorial => @editorial.attributes
    end

    assert_redirected_to editorial_path(assigns(:editorial))
  end

  test "should show editorial" do
    get :show, :id => @editorial.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @editorial.to_param
    assert_response :success
  end

  test "should update editorial" do
    put :update, :id => @editorial.to_param, :editorial => @editorial.attributes
    assert_redirected_to editorial_path(assigns(:editorial))
  end

  test "should destroy editorial" do
    assert_difference('Editorial.count', -1) do
      delete :destroy, :id => @editorial.to_param
    end

    assert_redirected_to editoriales_path
  end
end
