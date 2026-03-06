require "test_helper"

class HousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house = houses(:one)
  end

  test "should get index" do
    get houses_url, as: :json
    assert_response :success
  end

  test "should create house" do
    assert_difference("House.count") do
      post houses_url, params: { house: { address: @house.address, notes: @house.notes, state: @house.state, town: @house.town, zip: @house.zip } }, as: :json
    end

    assert_response :created
  end

  test "should show house" do
    get house_url(@house), as: :json
    assert_response :success
  end

  test "should update house" do
    patch house_url(@house), params: { house: { address: @house.address, notes: @house.notes, state: @house.state, town: @house.town, zip: @house.zip } }, as: :json
    assert_response :success
  end

  test "should destroy house" do
    assert_difference("House.count", -1) do
      delete house_url(@house), as: :json
    end

    assert_response :no_content
  end
end
