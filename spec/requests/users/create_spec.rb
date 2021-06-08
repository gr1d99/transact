require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe "POST /create" do
    it 'returns created http status' do
      post "/users", params: {
        first_name: 'John',
        last_name: 'Doe',
        email: 'johndoe@example.com',
        phone: '254717582057'
      }

      expect(response).to have_http_status(:created)
    end
  end

end
