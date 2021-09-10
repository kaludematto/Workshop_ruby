require "test_helper"

class ExameMedicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exame_medico = exame_medicos(:one)
  end

  test "should get index" do
    get exame_medicos_url
    assert_response :success
  end

  test "should get new" do
    get new_exame_medico_url
    assert_response :success
  end

  test "should create exame_medico" do
    assert_difference('ExameMedico.count') do
      post exame_medicos_url, params: { exame_medico: { laboratorio_id: @exame_medico.laboratorio_id, nome: @exame_medico.nome, status: @exame_medico.status, tipo: @exame_medico.tipo } }
    end

    assert_redirected_to exame_medico_url(ExameMedico.last)
  end

  test "should show exame_medico" do
    get exame_medico_url(@exame_medico)
    assert_response :success
  end

  test "should get edit" do
    get edit_exame_medico_url(@exame_medico)
    assert_response :success
  end

  test "should update exame_medico" do
    patch exame_medico_url(@exame_medico), params: { exame_medico: { laboratorio_id: @exame_medico.laboratorio_id, nome: @exame_medico.nome, status: @exame_medico.status, tipo: @exame_medico.tipo } }
    assert_redirected_to exame_medico_url(@exame_medico)
  end

  test "should destroy exame_medico" do
    assert_difference('ExameMedico.count', -1) do
      delete exame_medico_url(@exame_medico)
    end

    assert_redirected_to exame_medicos_url
  end
end
