require "test_helper"

class WallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wall = walls(:one)
  end

  test "should get index" do
    get walls_url, as: :json
    assert_response :success
  end

  test "should create wall" do
    assert_difference("Wall.count") do
      post walls_url, params: { wall: { height: @wall.height, length: @wall.length, room_id: @wall.room_id } }, as: :json
    end

    assert_response :created
  end

  test "should show wall" do
    get wall_url(@wall), as: :json
    assert_response :success
  end

  test "should update wall" do
    patch wall_url(@wall), params: { wall: { height: @wall.height, length: @wall.length, room_id: @wall.room_id } }, as: :json
    assert_response :success
  end

  test "should destroy wall" do
    assert_difference("Wall.count", -1) do
      delete wall_url(@wall), as: :json
    end

    assert_response :no_content
  end
end
