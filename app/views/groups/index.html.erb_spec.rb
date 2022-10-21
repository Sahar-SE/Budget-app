require 'rails_helper'

RSpec.describe 'index.html.erb', type: :system do
  context 'Write tests for group list page' do
    it 'displays the add new category' do
      visit groups_path
      expect(page).to have_content('Add New Category')
    end

    it 'displays the message of no categories' do
      visit groups_path
      sleep(3)
      expect(page).to have_content('There are no categories to show')
    end

    it 'displays the title of new category' do
      visit groups_path
      click_link 'Add New Category'
      sleep(3)
      expect(page).to have_content('NEW CATEGORY')
    end
  end
end
