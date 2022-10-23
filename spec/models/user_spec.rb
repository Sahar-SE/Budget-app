require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Write validation tests for user model' do
    it 'is not valid without a name' do
      first_user = User.create(name: nil, email: 'user1@email.com', password: 'password',
                               password_confirmation: 'password')
      expect(first_user).to_not be_valid
    end

    it 'is not valid without an email' do
      first_user = User.create(name: 'Mavericks', email: nil, password: 'password',
                               password_confirmation: 'password')
      expect(first_user).to_not be_valid
    end
  end
end
