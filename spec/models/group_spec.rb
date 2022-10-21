require 'rails_helper'

RSpec.describe Group, type: :model do
  context 'Write validation tests for group model' do
    it 'is not valid without a name' do
      first_group = Group.create(name: nil, icon: 'icon')
      expect(first_group).to_not be_valid
    end

    it 'is not valid without an icon' do
      first_group = Group.create(name: 'name', icon: nil)
      expect(first_group).to_not be_valid
    end
  end
end
