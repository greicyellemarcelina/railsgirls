require "application_system_test_case"

class GatineosTest < ApplicationSystemTestCase
  setup do
    @gatineo = gatineos(:one)
  end

  test "visiting the index" do
    visit gatineos_url
    assert_selector "h1", text: "Gatineos"
  end

  test "creating a Gatineo" do
    visit gatineos_url
    click_on "New Gatineo"

    fill_in "Cor", with: @gatineo.Cor
    fill_in "Name", with: @gatineo.Name
    fill_in "Raça", with: @gatineo.Raça
    fill_in "Tutor", with: @gatineo.Tutor
    click_on "Create Gatineo"

    assert_text "Gatineo was successfully created"
    click_on "Back"
  end

  test "updating a Gatineo" do
    visit gatineos_url
    click_on "Edit", match: :first

    fill_in "Cor", with: @gatineo.Cor
    fill_in "Name", with: @gatineo.Name
    fill_in "Raça", with: @gatineo.Raça
    fill_in "Tutor", with: @gatineo.Tutor
    click_on "Update Gatineo"

    assert_text "Gatineo was successfully updated"
    click_on "Back"
  end

  test "destroying a Gatineo" do
    visit gatineos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gatineo was successfully destroyed"
  end
end
