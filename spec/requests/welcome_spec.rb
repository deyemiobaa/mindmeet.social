# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Welcomes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/'
      expect(response).to have_http_status(:success)
    end

    it 'renders index template' do
      get '/'
      expect(response).to render_template(:index)
    end
  end
end
