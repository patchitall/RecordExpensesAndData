require 'test_helper'

class LegsControllerTest < ActionController::TestCase
  setup do
    @leg = legs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leg" do
    assert_difference('Leg.count') do
      post :create, leg: { end_mileage: @leg.end_mileage, end_time: @leg.end_time, non_travel_time_in_minutes: @leg.non_travel_time_in_minutes, non_work_miles: @leg.non_work_miles, start_mileage: @leg.start_mileage, start_time: @leg.start_time, trip_id: @leg.trip_id }
    end

    assert_redirected_to leg_path(assigns(:leg))
  end

  test "should show leg" do
    get :show, id: @leg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leg
    assert_response :success
  end

  test "should update leg" do
    patch :update, id: @leg, leg: { end_mileage: @leg.end_mileage, end_time: @leg.end_time, non_travel_time_in_minutes: @leg.non_travel_time_in_minutes, non_work_miles: @leg.non_work_miles, start_mileage: @leg.start_mileage, start_time: @leg.start_time, trip_id: @leg.trip_id }
    assert_redirected_to leg_path(assigns(:leg))
  end

  test "should destroy leg" do
    assert_difference('Leg.count', -1) do
      delete :destroy, id: @leg
    end

    assert_redirected_to legs_path
  end
end
