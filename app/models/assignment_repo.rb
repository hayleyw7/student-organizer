class AssignmentRepo < ApplicationRecord
  belongs_to :student
  belongs_to :assignment
end
