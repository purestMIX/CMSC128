require 'test_helper'

class MedSymptompsControllerTest < ActionController::TestCase
  setup do
    @med_symptomp = med_symptomps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:med_symptomps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create med_symptomp" do
    assert_difference('MedSymptomp.count') do
      post :create, med_symptomp: { medsId: @med_symptomp.medsId, symptompsId: @med_symptomp.symptompsId }
    end

    assert_redirected_to med_symptomp_path(assigns(:med_symptomp))
  end

  test "should show med_symptomp" do
    get :show, id: @med_symptomp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @med_symptomp
    assert_response :success
  end

  test "should update med_symptomp" do
    patch :update, id: @med_symptomp, med_symptomp: { medsId: @med_symptomp.medsId, symptompsId: @med_symptomp.symptompsId }
    assert_redirected_to med_symptomp_path(assigns(:med_symptomp))
  end

  test "should destroy med_symptomp" do
    assert_difference('MedSymptomp.count', -1) do
      delete :destroy, id: @med_symptomp
    end

    assert_redirected_to med_symptomps_path
  end
end
