require 'test_helper'

class SymptompsControllerTest < ActionController::TestCase
  setup do
    @symptomp = symptomps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:symptomps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create symptomp" do
    assert_difference('Symptomp.count') do
      post :create, symptomp: { symptompsDesc: @symptomp.symptompsDesc, symptompsName: @symptomp.symptompsName }
    end

    assert_redirected_to symptomp_path(assigns(:symptomp))
  end

  test "should show symptomp" do
    get :show, id: @symptomp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @symptomp
    assert_response :success
  end

  test "should update symptomp" do
    patch :update, id: @symptomp, symptomp: { symptompsDesc: @symptomp.symptompsDesc, symptompsName: @symptomp.symptompsName }
    assert_redirected_to symptomp_path(assigns(:symptomp))
  end

  test "should destroy symptomp" do
    assert_difference('Symptomp.count', -1) do
      delete :destroy, id: @symptomp
    end

    assert_redirected_to symptomps_path
  end
end
