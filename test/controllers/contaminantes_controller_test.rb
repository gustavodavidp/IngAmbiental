require 'test_helper'

class ContaminantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contaminante = contaminantes(:one)
  end

  test "should get index" do
    get contaminantes_url
    assert_response :success
  end

  test "should get new" do
    get new_contaminante_url
    assert_response :success
  end

  test "should create contaminante" do
    assert_difference('Contaminante.count') do
      post contaminantes_url, params: { contaminante: { descripcion: @contaminante.descripcion, lugare_id: @contaminante.lugare_id, nivel: @contaminante.nivel, nombre: @contaminante.nombre } }
    end

    assert_redirected_to contaminante_url(Contaminante.last)
  end

  test "should show contaminante" do
    get contaminante_url(@contaminante)
    assert_response :success
  end

  test "should get edit" do
    get edit_contaminante_url(@contaminante)
    assert_response :success
  end

  test "should update contaminante" do
    patch contaminante_url(@contaminante), params: { contaminante: { descripcion: @contaminante.descripcion, lugare_id: @contaminante.lugare_id, nivel: @contaminante.nivel, nombre: @contaminante.nombre } }
    assert_redirected_to contaminante_url(@contaminante)
  end

  test "should destroy contaminante" do
    assert_difference('Contaminante.count', -1) do
      delete contaminante_url(@contaminante)
    end

    assert_redirected_to contaminantes_url
  end
end
