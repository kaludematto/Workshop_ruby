require "application_system_test_case"

class ExameMedicosTest < ApplicationSystemTestCase
  setup do
    @exame_medico = exame_medicos(:one)
  end

  test "visiting the index" do
    visit exame_medicos_url
    assert_selector "h1", text: "Exame Medicos"
  end

  test "creating a Exame medico" do
    visit exame_medicos_url
    click_on "New Exame Medico"

    fill_in "Laboratorio", with: @exame_medico.laboratorio_id
    fill_in "Nome", with: @exame_medico.nome
    check "Status" if @exame_medico.status
    fill_in "Tipo", with: @exame_medico.tipo
    click_on "Create Exame medico"

    assert_text "Exame medico was successfully created"
    click_on "Back"
  end

  test "updating a Exame medico" do
    visit exame_medicos_url
    click_on "Edit", match: :first

    fill_in "Laboratorio", with: @exame_medico.laboratorio_id
    fill_in "Nome", with: @exame_medico.nome
    check "Status" if @exame_medico.status
    fill_in "Tipo", with: @exame_medico.tipo
    click_on "Update Exame medico"

    assert_text "Exame medico was successfully updated"
    click_on "Back"
  end

  test "destroying a Exame medico" do
    visit exame_medicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exame medico was successfully destroyed"
  end
end
