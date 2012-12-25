require 'test_helper'

class PresentersControllerTest < ActionController::TestCase
  setup do
    @presenter = presenters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presenters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presenter" do
    assert_difference('Presenter.count') do
      post :create, presenter: { aim: @presenter.aim, email: @presenter.email, fbook: @presenter.fbook, handle: @presenter.handle, linkedin: @presenter.linkedin, name: @presenter.name, skype: @presenter.skype, twitter: @presenter.twitter, url: @presenter.url }
    end

    assert_redirected_to presenter_path(assigns(:presenter))
  end

  test "should show presenter" do
    get :show, id: @presenter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presenter
    assert_response :success
  end

  test "should update presenter" do
    put :update, id: @presenter, presenter: { aim: @presenter.aim, email: @presenter.email, fbook: @presenter.fbook, handle: @presenter.handle, linkedin: @presenter.linkedin, name: @presenter.name, skype: @presenter.skype, twitter: @presenter.twitter, url: @presenter.url }
    assert_redirected_to presenter_path(assigns(:presenter))
  end

  test "should destroy presenter" do
    assert_difference('Presenter.count', -1) do
      delete :destroy, id: @presenter
    end

    assert_redirected_to presenters_path
  end
end
