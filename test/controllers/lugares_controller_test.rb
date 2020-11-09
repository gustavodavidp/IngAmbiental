require 'test_helper'

class LugaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lugare = lugares(:one)
  end

  test "should get index" do
    get lugares_url
    assert_response :success
  end

  test "should get new" do
    get new_lugare_url
    assert_response :success
  end

  test "should create lugare" do
    assert_difference('Lugare.count') do
      post lugares_url, params: { lugare: { descripcion: @lugare.descripcion, nombre: @lugare.nombre } }
    end

    assert_redirected_to lugare_url(Lugare.last)
  end

  test "should show lugare" do
    get lugare_url(@lugare)
    assert_response :success
  end

  test "should get edit" do
    get edit_lugare_url(@lugare)
    assert_response :success
  end

  test "should update lugare" do
    patch lugare_url(@lugare), params: { lugare: { descripcion: @lugare.descripcion, nombre: @lugare.nombre } }
    assert_redirected_to lugare_url(@lugare)
  end

  test "should destroy lugare" do
    assert_difference('Lugare.count', -1) do
      delete lugare_url(@lugare)
    end

    assert_redirected_to lugares_url
  end
end
