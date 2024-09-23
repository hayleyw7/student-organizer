require "application_system_test_case"

class AssignmentReposTest < ApplicationSystemTestCase
  setup do
    @assignment_repo = assignment_repos(:one)
  end

  test "visiting the index" do
    visit assignment_repos_url
    assert_selector "h1", text: "Assignment repos"
  end

  test "should create assignment repo" do
    visit assignment_repos_url
    click_on "New assignment repo"

    fill_in "Assignment", with: @assignment_repo.assignment_id
    fill_in "Repo url", with: @assignment_repo.repo_url
    fill_in "Student", with: @assignment_repo.student_id
    click_on "Create Assignment repo"

    assert_text "Assignment repo was successfully created"
    click_on "Back"
  end

  test "should update Assignment repo" do
    visit assignment_repo_url(@assignment_repo)
    click_on "Edit this assignment repo", match: :first

    fill_in "Assignment", with: @assignment_repo.assignment_id
    fill_in "Repo url", with: @assignment_repo.repo_url
    fill_in "Student", with: @assignment_repo.student_id
    click_on "Update Assignment repo"

    assert_text "Assignment repo was successfully updated"
    click_on "Back"
  end

  test "should destroy Assignment repo" do
    visit assignment_repo_url(@assignment_repo)
    click_on "Destroy this assignment repo", match: :first

    assert_text "Assignment repo was successfully destroyed"
  end
end
