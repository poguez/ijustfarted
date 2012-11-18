require 'test_helper'

class FartsControllerTest < ActionController::TestCase
  setup do
    @fart = farts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fart" do
    assert_difference('Fart.count') do
      post :create, fart: {  }
    end

    assert_redirected_to fart_path(assigns(:fart))
  end

  test "should show fart" do
    get :show, id: @fart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fart
    assert_response :success
  end

  test "should update fart" do
    put :update, id: @fart, fart: {  }
    assert_redirected_to fart_path(assigns(:fart))
  end

  test "should destroy fart" do
    assert_difference('Fart.count', -1) do
      delete :destroy, id: @fart
    end

    assert_redirected_to farts_path
  end
end
