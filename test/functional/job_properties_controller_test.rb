require 'test_helper'

class JobPropertiesControllerTest < ActionController::TestCase
  setup do
    @job_property = job_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_property" do
    assert_difference('JobProperty.count') do
      post :create, :job_property => @job_property.attributes
    end

    assert_redirected_to job_property_path(assigns(:job_property))
  end

  test "should show job_property" do
    get :show, :id => @job_property.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @job_property.to_param
    assert_response :success
  end

  test "should update job_property" do
    put :update, :id => @job_property.to_param, :job_property => @job_property.attributes
    assert_redirected_to job_property_path(assigns(:job_property))
  end

  test "should destroy job_property" do
    assert_difference('JobProperty.count', -1) do
      delete :destroy, :id => @job_property.to_param
    end

    assert_redirected_to job_properties_path
  end
end
