class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :budgets, dependent: :destroy
  has_many :group_budgets, through: :budgets, dependent: :destroy
  has_many :groups, through: :group_budgets, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
end
