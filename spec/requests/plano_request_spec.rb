require 'rails_helper'

RSpec.describe "Planos", type: :request do
    describe "GET /plano" do
        it "procura clinicas por plano de saude" do
            get '/plano', params: {plano_de_saude: "Unimed"}
            
            expect(response).to have_http_status(:success)
        end
        it "procura clinicas por plano de saude inexistente" do
            get '/plano', params: {plano_de_saude: "aeta"}
            expect(response).to  render_template(:planoerror)

        end
    end

end




