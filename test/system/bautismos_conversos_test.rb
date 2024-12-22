require "application_system_test_case"

class BautismosConversosTest < ApplicationSystemTestCase
  setup do
    @bautismos_converso = bautismos_conversos(:one)
  end

  test "visiting the index" do
    visit bautismos_conversos_url
    assert_selector "h1", text: "Bautismos conversos"
  end

  test "should create bautismos converso" do
    visit bautismos_conversos_url
    click_on "New bautismos converso"

    fill_in "Age", with: @bautismos_converso.age
    fill_in "Attendande", with: @bautismos_converso.attendande
    fill_in "Bautism date", with: @bautismos_converso.bautism_date
    fill_in "Confirmation date", with: @bautismos_converso.confirmation_date
    fill_in "Gender", with: @bautismos_converso.gender
    fill_in "Name", with: @bautismos_converso.name
    fill_in "Unidads", with: @bautismos_converso.unidads_id
    click_on "Create Bautismos converso"

    assert_text "Bautismos converso was successfully created"
    click_on "Back"
  end

  test "should update Bautismos converso" do
    visit bautismos_converso_url(@bautismos_converso)
    click_on "Edit this bautismos converso", match: :first

    fill_in "Age", with: @bautismos_converso.age
    fill_in "Attendande", with: @bautismos_converso.attendande
    fill_in "Bautism date", with: @bautismos_converso.bautism_date
    fill_in "Confirmation date", with: @bautismos_converso.confirmation_date
    fill_in "Gender", with: @bautismos_converso.gender
    fill_in "Name", with: @bautismos_converso.name
    fill_in "Unidads", with: @bautismos_converso.unidads_id
    click_on "Update Bautismos converso"

    assert_text "Bautismos converso was successfully updated"
    click_on "Back"
  end

  test "should destroy Bautismos converso" do
    visit bautismos_converso_url(@bautismos_converso)
    click_on "Destroy this bautismos converso", match: :first

    assert_text "Bautismos converso was successfully destroyed"
  end
end
