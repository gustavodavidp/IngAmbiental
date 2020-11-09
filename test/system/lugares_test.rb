require "application_system_test_case"

class LugaresTest < ApplicationSystemTestCase
  setup do
    @lugare = lugares(:one)
  end

  test "visiting the index" do
    visit lugares_url
    assert_selector "h1", text: "Lugares"
  end

  test "creating a Lugare" do
    visit lugares_url
    click_on "New Lugare"

    fill_in "Descripcion", with: @lugare.descripcion
    fill_in "Nombre", with: @lugare.nombre
    click_on "Create Lugare"

    assert_text "Lugare was successfully created"
    click_on "Back"
  end

  test "updating a Lugare" do
    visit lugares_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @lugare.descripcion
    fill_in "Nombre", with: @lugare.nombre
    click_on "Update Lugare"

    assert_text "Lugare was successfully updated"
    click_on "Back"
  end

  test "destroying a Lugare" do
    visit lugares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lugare was successfully destroyed"
  end
end
