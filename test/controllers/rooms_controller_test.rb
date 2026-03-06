require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url, as: :json
    assert_response :success
  end

  test "should create room" do
    assert_difference("Room.count") do
      post rooms_url, params: { room: { house_id: @room.house_id, room_name: @room.room_name, room_notes: @room.room_notes, room_number: @room.room_number } }, as: :json
    end

    assert_response :created
  end

  test "should show room" do
    get room_url(@room), as: :json
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { house_id: @room.house_id, room_name: @room.room_name, room_notes: @room.room_notes, room_number: @room.room_number } }, as: :json
    assert_response :success
  end

  test "should destroy room" do
    assert_difference("Room.count", -1) do
      delete room_url(@room), as: :json
    end

    assert_response :no_content
  end
end
