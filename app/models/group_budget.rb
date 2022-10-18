class GroupBudget < ApplicationRecord
  belongs_to :group
  belongs_to :budget
end
