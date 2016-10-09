require 'test_helper'

class ControllerThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @controller_thing = controller_things(:one)
  end

  test "should get index" do
    get controller_things_url
    assert_response :success
  end

  test "should get new" do
    get new_controller_thing_url
    assert_response :success
  end

  test "should create controller_thing" do
    assert_difference('ControllerThing.count') do
      post controller_things_url, params: { controller_thing: {  } }
    end

    assert_redirected_to controller_thing_url(ControllerThing.last)
  end

  test "should show controller_thing" do
    get controller_thing_url(@controller_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_controller_thing_url(@controller_thing)
    assert_response :success
  end

  test "should update controller_thing" do
    patch controller_thing_url(@controller_thing), params: { controller_thing: {  } }
    assert_redirected_to controller_thing_url(@controller_thing)
  end

  test "should destroy controller_thing" do
    assert_difference('ControllerThing.count', -1) do
      delete controller_thing_url(@controller_thing)
    end

    assert_redirected_to controller_things_url
  end
end
