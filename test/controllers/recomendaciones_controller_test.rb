require "test_helper"

class RecomendacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recomendacion = recomendaciones(:one)
  end

  test "should get index" do
    get recomendaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_recomendacion_url
    assert_response :success
  end

  test "should create recomendacion" do
    assert_difference('Recomendacion.count') do
      post recomendaciones_url, params: { recomendacion: { contenido: @recomendacion.contenido, titulo: @recomendacion.titulo, user_id: @recomendacion.user_id } }
    end

    assert_redirected_to recomendacion_url(Recomendacion.last)
  end

  test "should show recomendacion" do
    get recomendacion_url(@recomendacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_recomendacion_url(@recomendacion)
    assert_response :success
  end

  test "should update recomendacion" do
    patch recomendacion_url(@recomendacion), params: { recomendacion: { contenido: @recomendacion.contenido, titulo: @recomendacion.titulo, user_id: @recomendacion.user_id } }
    assert_redirected_to recomendacion_url(@recomendacion)
  end

  test "should destroy recomendacion" do
    assert_difference('Recomendacion.count', -1) do
      delete recomendacion_url(@recomendacion)
    end

    assert_redirected_to recomendaciones_url
  end
end
