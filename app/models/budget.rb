class Budget < ApplicationRecord
  belongs_to :user
  has_many :group_budgets, dependent: :destroy
  has_many :groups, through: :group_budgets
end
