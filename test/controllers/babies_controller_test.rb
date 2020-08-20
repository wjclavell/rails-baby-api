require 'test_helper'

class BabiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baby = babies(:one)
  end

  test "should get index" do
    get babies_url, as: :json
    assert_response :success
  end

  test "should create baby" do
    assert_difference('Baby.count') do
      post babies_url, params: { baby: { age: @baby.age, name: @baby.name } }, as: :json
    end

    assert_response 201
  end

  test "should show baby" do
    get baby_url(@baby), as: :json
    assert_response :success
  end

  test "should update baby" do
    patch baby_url(@baby), params: { baby: { age: @baby.age, name: @baby.name } }, as: :json
    assert_response 200
  end

  test "should destroy baby" do
    assert_difference('Baby.count', -1) do
      delete baby_url(@baby), as: :json
    end

    assert_response 204
  end
end
