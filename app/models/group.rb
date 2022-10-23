class Group < ApplicationRecord
  has_many :group_budgets, dependent: :destroy
  has_many :budgets, through: :group_budgets

  validates :name, :icon, presence: true
end
