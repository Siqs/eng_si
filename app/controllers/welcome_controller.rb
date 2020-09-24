class WelcomeController < ApplicationController
  def index
    @clinicas = Clinica.all
  end
end
