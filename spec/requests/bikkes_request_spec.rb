require 'rails_helper'

RSpec.describe "Bikkes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/bikkes/index"
      expect(response).to have_http_status(:success)
    end
  end

end
