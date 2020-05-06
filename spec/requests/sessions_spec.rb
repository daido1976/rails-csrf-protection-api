require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "POST /login" do
    it "is 200 ok" do
      post login_path
      expect(response).to have_http_status(200)
    end
  end
end
