require 'test_helper'

class GatineosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gatineo = gatineos(:one)
  end

  test "should get index" do
    get gatineos_url
    assert_response :success
  end

  test "should get new" do
    get new_gatineo_url
    assert_response :success
  end

  test "should create gatineo" do
    assert_difference('Gatineo.count') do
      post gatineos_url, params: { gatineo: { Cor: @gatineo.Cor, Name: @gatineo.Name, Raça: @gatineo.Raça, Tutor: @gatineo.Tutor } }
    end

    assert_redirected_to gatineo_url(Gatineo.last)
  end

  test "should show gatineo" do
    get gatineo_url(@gatineo)
    assert_response :success
  end

  test "should get edit" do
    get edit_gatineo_url(@gatineo)
    assert_response :success
  end

  test "should update gatineo" do
    patch gatineo_url(@gatineo), params: { gatineo: { Cor: @gatineo.Cor, Name: @gatineo.Name, Raça: @gatineo.Raça, Tutor: @gatineo.Tutor } }
    assert_redirected_to gatineo_url(@gatineo)
  end

  test "should destroy gatineo" do
    assert_difference('Gatineo.count', -1) do
      delete gatineo_url(@gatineo)
    end

    assert_redirected_to gatineos_url
  end
end
