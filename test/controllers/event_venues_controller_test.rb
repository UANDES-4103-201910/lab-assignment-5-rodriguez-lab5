require 'test_helper'

class EventVenuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_venue = event_venues(:one)
  end

  test "should get index" do
    get event_venues_url
    assert_response :success
  end

  test "should get new" do
    get new_event_venue_url
    assert_response :success
  end

  test "should create event_venue" do
    assert_difference('EventVenue.count') do
      post event_venues_url, params: { event_venue: {  } }
    end

    assert_redirected_to event_venue_url(EventVenue.last)
  end

  test "should show event_venue" do
    get event_venue_url(@event_venue)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_venue_url(@event_venue)
    assert_response :success
  end

  test "should update event_venue" do
    patch event_venue_url(@event_venue), params: { event_venue: {  } }
    assert_redirected_to event_venue_url(@event_venue)
  end

  test "should destroy event_venue" do
    assert_difference('EventVenue.count', -1) do
      delete event_venue_url(@event_venue)
    end

    assert_redirected_to event_venues_url
  end
end
