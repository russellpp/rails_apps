require "test_helper"

class PotatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @potato = potatos(:one)
  end

  test "should get index" do
    get potatos_url
    assert_response :success
  end

  test "should get new" do
    get new_potato_url
    assert_response :success
  end

  test "should create potato" do
    assert_difference("Potato.count") do
      post potatos_url, params: { potato: { brand: @potato.brand, kg: @potato.kg, price: @potato.price } }
    end

    assert_redirected_to potato_url(Potato.last)
  end

  test "should show potato" do
    get potato_url(@potato)
    assert_response :success
  end

  test "should get edit" do
    get edit_potato_url(@potato)
    assert_response :success
  end

  test "should update potato" do
    patch potato_url(@potato), params: { potato: { brand: @potato.brand, kg: @potato.kg, price: @potato.price } }
    assert_redirected_to potato_url(@potato)
  end

  test "should destroy potato" do
    assert_difference("Potato.count", -1) do
      delete potato_url(@potato)
    end

    assert_redirected_to potatos_url
  end
end
