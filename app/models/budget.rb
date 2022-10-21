class Budget < ApplicationRecord
  belongs_to :user
  has_many :group_budgets, dependent: :destroy
  has_many :groups, through: :group_budgets

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
