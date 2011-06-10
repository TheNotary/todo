require 'test_helper'

class HellosControllerTest < ActionController::TestCase
  setup do
    @hello = hellos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hellos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hello" do
    assert_difference('Hello.count') do
      post :create, :hello => @hello.attributes
    end

    assert_redirected_to hello_path(assigns(:hello))
  end

  test "should show hello" do
    get :show, :id => @hello.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hello.to_param
    assert_response :success
  end

  test "should update hello" do
    put :update, :id => @hello.to_param, :hello => @hello.attributes
    assert_redirected_to hello_path(assigns(:hello))
  end

  test "should destroy hello" do
    assert_difference('Hello.count', -1) do
      delete :destroy, :id => @hello.to_param
    end

    assert_redirected_to hellos_path
  end
end
