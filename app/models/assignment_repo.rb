class Assignment < ApplicationRecord
  has_many :assignment_repos
  has_many :students, through: :assignment_repos
end
