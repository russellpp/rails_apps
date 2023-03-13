require "application_system_test_case"

class PotatosTest < ApplicationSystemTestCase
  setup do
    @potato = potatos(:one)
  end

  test "visiting the index" do
    visit potatos_url
    assert_selector "h1", text: "Potatos"
  end

  test "should create potato" do
    visit potatos_url
    click_on "New potato"

    fill_in "Brand", with: @potato.brand
    fill_in "Kg", with: @potato.kg
    fill_in "Price", with: @potato.price
    click_on "Create Potato"

    assert_text "Potato was successfully created"
    click_on "Back"
  end

  test "should update Potato" do
    visit potato_url(@potato)
    click_on "Edit this potato", match: :first

    fill_in "Brand", with: @potato.brand
    fill_in "Kg", with: @potato.kg
    fill_in "Price", with: @potato.price
    click_on "Update Potato"

    assert_text "Potato was successfully updated"
    click_on "Back"
  end

  test "should destroy Potato" do
    visit potato_url(@potato)
    click_on "Destroy this potato", match: :first

    assert_text "Potato was successfully destroyed"
  end
end
