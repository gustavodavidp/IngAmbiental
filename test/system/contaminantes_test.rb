require "application_system_test_case"

class ContaminantesTest < ApplicationSystemTestCase
  setup do
    @contaminante = contaminantes(:one)
  end

  test "visiting the index" do
    visit contaminantes_url
    assert_selector "h1", text: "Contaminantes"
  end

  test "creating a Contaminante" do
    visit contaminantes_url
    click_on "New Contaminante"

    fill_in "Descripcion", with: @contaminante.descripcion
    fill_in "Lugare", with: @contaminante.lugare_id
    fill_in "Nivel", with: @contaminante.nivel
    fill_in "Nombre", with: @contaminante.nombre
    click_on "Create Contaminante"

    assert_text "Contaminante was successfully created"
    click_on "Back"
  end

  test "updating a Contaminante" do
    visit contaminantes_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @contaminante.descripcion
    fill_in "Lugare", with: @contaminante.lugare_id
    fill_in "Nivel", with: @contaminante.nivel
    fill_in "Nombre", with: @contaminante.nombre
    click_on "Update Contaminante"

    assert_text "Contaminante was successfully updated"
    click_on "Back"
  end

  test "destroying a Contaminante" do
    visit contaminantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contaminante was successfully destroyed"
  end
end
