require 'rails_helper'

RSpec.describe 'index.html.erb', type: :system do
  context 'Write tests for users list page' do
    it 'displays the name of the app' do
      visit '/users'
      sleep(3)
      expect(page).to have_content('Users List')
    end

    it 'displays the name of the app' do
      visit '/users'
      expect(page).to have_content('Back')
    end
  end
end
