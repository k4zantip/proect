require 'test_helper'

class ProjctsControllerTest < ActionController::TestCase
  setup do
    @projct = projcts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projcts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projct" do
    assert_difference('Projct.count') do
      post :create, projct: { enddate: @projct.enddate, name: @projct.name, startdate: @projct.startdate, summary: @projct.summary }
    end

    assert_redirected_to projct_path(assigns(:projct))
  end

  test "should show projct" do
    get :show, id: @projct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projct
    assert_response :success
  end

  test "should update projct" do
    patch :update, id: @projct, projct: { enddate: @projct.enddate, name: @projct.name, startdate: @projct.startdate, summary: @projct.summary }
    assert_redirected_to projct_path(assigns(:projct))
  end

  test "should destroy projct" do
    assert_difference('Projct.count', -1) do
      delete :destroy, id: @projct
    end

    assert_redirected_to projcts_path
  end
end
