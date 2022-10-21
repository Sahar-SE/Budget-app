require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  describe 'GET /index' do
    before(:example) { get '/groups' }

    it 'returns correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders correct template' do
      #   expect(response).to render_template(:index)
    end

    it 'returns correct response body' do
      expect(response.body).to include('Add New Category')
    end
  end
end
