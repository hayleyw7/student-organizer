json.extract! assignment_repo, :id, :student_id, :assignment_id, :repo_url, :created_at, :updated_at
json.url assignment_repo_url(assignment_repo, format: :json)
