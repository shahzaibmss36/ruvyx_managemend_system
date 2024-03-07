require "application_system_test_case"

class AdmissionsTest < ApplicationSystemTestCase
  setup do
    @admission = admissions(:one)
  end

  test "visiting the index" do
    visit admissions_url
    assert_selector "h1", text: "Admissions"
  end

  test "should create admission" do
    visit admissions_url
    click_on "New admission"

    fill_in "Address", with: @admission.address
    fill_in "Course", with: @admission.course_id
    fill_in "Date of birth", with: @admission.date_of_birth
    fill_in "Father name", with: @admission.father_name
    fill_in "Name", with: @admission.name
    fill_in "User", with: @admission.user_id
    click_on "Create Admission"

    assert_text "Admission was successfully created"
    click_on "Back"
  end

  test "should update Admission" do
    visit admission_url(@admission)
    click_on "Edit this admission", match: :first

    fill_in "Address", with: @admission.address
    fill_in "Course", with: @admission.course_id
    fill_in "Date of birth", with: @admission.date_of_birth
    fill_in "Father name", with: @admission.father_name
    fill_in "Name", with: @admission.name
    fill_in "User", with: @admission.user_id
    click_on "Update Admission"

    assert_text "Admission was successfully updated"
    click_on "Back"
  end

  test "should destroy Admission" do
    visit admission_url(@admission)
    click_on "Destroy this admission", match: :first

    assert_text "Admission was successfully destroyed"
  end
end
