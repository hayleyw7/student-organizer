json.extract! student, :id, :name, :slack_link, :github_link, :replit_link, :class_name, :active, :created_at, :updated_at
json.url student_url(student, format: :json)
