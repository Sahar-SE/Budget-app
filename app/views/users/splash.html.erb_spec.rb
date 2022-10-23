require 'rails_helper'

RSpec.describe 'splash.html.erb', type: :system do
  context 'Write tests for splash page' do
    it 'displays the name of the app' do
      visit root_path
      expect(page).to have_content('BudgetOnRails')
    end

    it 'displays a link to the sign up page' do
      visit root_path
      expect(page).to have_content('SIGN UP')
    end

    it 'displays a link to the login page' do
      visit root_path
      expect(page).to have_content('LOG IN')
    end
  end
end
