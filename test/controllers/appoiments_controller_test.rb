require 'test_helper'

class AppoimentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appoiment = appoiments(:one)
  end

  test "should get index" do
    get appoiments_url
    assert_response :success
  end

  test "should get new" do
    get new_appoiment_url
    assert_response :success
  end

  test "should create appoiment" do
    assert_difference('Appoiment.count') do
      post appoiments_url, params: { appoiment: { annotations: @appoiment.annotations, date: @appoiment.date, hour: @appoiment.hour, patient_id: @appoiment.patient_id, user_id: @appoiment.user_id } }
    end

    assert_redirected_to appoiment_url(Appoiment.last)
  end

  test "should show appoiment" do
    get appoiment_url(@appoiment)
    assert_response :success
  end

  test "should get edit" do
    get edit_appoiment_url(@appoiment)
    assert_response :success
  end

  test "should update appoiment" do
    patch appoiment_url(@appoiment), params: { appoiment: { annotations: @appoiment.annotations, date: @appoiment.date, hour: @appoiment.hour, patient_id: @appoiment.patient_id, user_id: @appoiment.user_id } }
    assert_redirected_to appoiment_url(@appoiment)
  end

  test "should destroy appoiment" do
    assert_difference('Appoiment.count', -1) do
      delete appoiment_url(@appoiment)
    end

    assert_redirected_to appoiments_url
  end
end
