require 'test_helper'

class ConfrencesControllerTest < ActionController::TestCase
  setup do
    @confrence = confrences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confrences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confrence" do
    assert_difference('Confrence.count') do
      post :create, confrence: { location: @confrence.location, name: @confrence.name, year: @confrence.year }
    end

    assert_redirected_to confrence_path(assigns(:confrence))
  end

  test "should show confrence" do
    get :show, id: @confrence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confrence
    assert_response :success
  end

  test "should update confrence" do
    put :update, id: @confrence, confrence: { location: @confrence.location, name: @confrence.name, year: @confrence.year }
    assert_redirected_to confrence_path(assigns(:confrence))
  end

  test "should destroy confrence" do
    assert_difference('Confrence.count', -1) do
      delete :destroy, id: @confrence
    end

    assert_redirected_to confrences_path
  end
end
