require 'rails_helper'

RSpec.describe "Welcomes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/welcome/index"
      expect(response).to have_http_status(:success)
    end
  end
  describe "GET /new" do
    it "returns http success" do
      get "/welcome/new"
      expect(response).to have_http_status(:success)
    end
  end
  describe "GET /" do
    it "returns http success" do
      get "/welcome"
      expect(response).to have_http_status(:success)
    end
  end
  describe "POST /index" do
    it "valid parameters" do
      post "/welcome/", params:{
        clinica: {name:"bem viver",address:"paulista"}
      }
      expect(response).to have_http_status(302)
    end
  end


end
