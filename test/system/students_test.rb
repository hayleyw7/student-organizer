require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    check "Active" if @student.active
    fill_in "Class name", with: @student.class_name
    fill_in "Github link", with: @student.github_link
    fill_in "Name", with: @student.name
    fill_in "Replit link", with: @student.replit_link
    fill_in "Slack link", with: @student.slack_link
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    check "Active" if @student.active
    fill_in "Class name", with: @student.class_name
    fill_in "Github link", with: @student.github_link
    fill_in "Name", with: @student.name
    fill_in "Replit link", with: @student.replit_link
    fill_in "Slack link", with: @student.slack_link
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
