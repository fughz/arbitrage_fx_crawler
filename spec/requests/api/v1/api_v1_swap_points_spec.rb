require 'rails_helper'

RSpec.describe "Api::V1::SwapPoints", type: :request do

  describe "GET /api_v1_swap_points" do

    FactoryGirl.create(:swap_point)

    it 'get swap_points list' do

      get '/api/v1/swap_points',
        {
          :pair => "USD/JPY",
          :start_date => DateTime.now.strftime("%Y-%m-%d"),
          :end_date => DateTime.now.strftime("%Y-%m-%d")
        },
        format: 'json'

      expect(response).to have_http_status(:ok)
      #json[date]
    end

    it "return status 500 when empty all params" do
      get '/api/v1/swap_points'
      expect(response).to have_http_status(500)
    end

    it "return status 500 when send only param pair" do
      get '/api/v1/swap_points',
        {
          :pair => "USD/JPY",
        },
        format: 'json'
      expect(response).to have_http_status(500)
    end

    it "return status 500 when send without param end_date" do
      get '/api/v1/swap_points',
        {
          :pair => "USD/JPY",
          :start_date => DateTime.now.strftime("%Y-%m-%d")
        },
        format: 'json'
      expect(response).to have_http_status(500)
    end

  end
end
