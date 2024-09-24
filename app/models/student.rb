class Student < ApplicationRecord
  validates :name, presence: true
  validates :cohort, presence: true
end
