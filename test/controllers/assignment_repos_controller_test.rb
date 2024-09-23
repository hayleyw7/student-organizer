require "test_helper"

class AssignmentReposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignment_repo = assignment_repos(:one)
  end

  test "should get index" do
    get assignment_repos_url
    assert_response :success
  end

  test "should get new" do
    get new_assignment_repo_url
    assert_response :success
  end

  test "should create assignment_repo" do
    assert_difference("AssignmentRepo.count") do
      post assignment_repos_url, params: { assignment_repo: { assignment_id: @assignment_repo.assignment_id, repo_url: @assignment_repo.repo_url, student_id: @assignment_repo.student_id } }
    end

    assert_redirected_to assignment_repo_url(AssignmentRepo.last)
  end

  test "should show assignment_repo" do
    get assignment_repo_url(@assignment_repo)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignment_repo_url(@assignment_repo)
    assert_response :success
  end

  test "should update assignment_repo" do
    patch assignment_repo_url(@assignment_repo), params: { assignment_repo: { assignment_id: @assignment_repo.assignment_id, repo_url: @assignment_repo.repo_url, student_id: @assignment_repo.student_id } }
    assert_redirected_to assignment_repo_url(@assignment_repo)
  end

  test "should destroy assignment_repo" do
    assert_difference("AssignmentRepo.count", -1) do
      delete assignment_repo_url(@assignment_repo)
    end

    assert_redirected_to assignment_repos_url
  end
end
