class Student < ApplicationRecord
  has_many :assignment_repos
  has_many :assignments, through: :assignment_repos

  validates :cohort, presence: true
end
