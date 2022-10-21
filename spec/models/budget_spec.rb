require 'rails_helper'

RSpec.describe Budget, type: :model do
  context 'Write validation tests for budget model' do
    it 'is not valid without a name' do
      first_budget = Budget.create(name: nil, amount: 100)
      expect(first_budget).to_not be_valid
    end

    it 'is not valid without an amount' do
      first_budget = Budget.create(name: 'name', amount: nil)
      expect(first_budget).to_not be_valid
    end
  end
end
