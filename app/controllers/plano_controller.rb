class PlanoController < ApplicationController


def index
    plan = params['plano_de_saude']
    @clinicas = Clinica.where(plano: plan)

    if @clinicas.blank?
      render 'planoerror' and return
    end 
  end
end
