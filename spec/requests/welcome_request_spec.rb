require 'rails_helper'

RSpec.describe "Welcomes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

  #describe 'POST /' do
  #  it "salva coordenadas no localStorage" do
  #    post "/", :params => {format: :js, :endereco_atual => "Av. Paulista, 1578" }
  #    mock
  #    expect(response.body).to eq("localStorage.setItem('coordenadaAtual','[-23.5615171, -46.655961]');\n    document.location.reload();")

  #  end
  #end
end
