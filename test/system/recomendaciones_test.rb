require "application_system_test_case"

class RecomendacionesTest < ApplicationSystemTestCase
  setup do
    @recomendacion = recomendaciones(:one)
  end

  test "visiting the index" do
    visit recomendaciones_url
    assert_selector "h1", text: "Recomendaciones"
  end

  test "creating a Recomendacion" do
    visit recomendaciones_url
    click_on "New Recomendacion"

    fill_in "Contenido", with: @recomendacion.contenido
    fill_in "Titulo", with: @recomendacion.titulo
    fill_in "User", with: @recomendacion.user_id
    click_on "Create Recomendacion"

    assert_text "Recomendacion was successfully created"
    click_on "Back"
  end

  test "updating a Recomendacion" do
    visit recomendaciones_url
    click_on "Edit", match: :first

    fill_in "Contenido", with: @recomendacion.contenido
    fill_in "Titulo", with: @recomendacion.titulo
    fill_in "User", with: @recomendacion.user_id
    click_on "Update Recomendacion"

    assert_text "Recomendacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Recomendacion" do
    visit recomendaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recomendacion was successfully destroyed"
  end
end
