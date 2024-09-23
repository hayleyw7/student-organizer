class Student < ApplicationRecord
  has_many :assignment_repos, class_name: 'AssignmentRepo'
  has_many :assignments, through: :assignment_repos
end
