class Assignment < ApplicationRecord
  has_many :assignment_repos, class_name: 'AssignmentRepo'
  has_many :students, through: :assignment_repos
end
