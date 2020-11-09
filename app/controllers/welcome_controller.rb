class WelcomeController < ApplicationController
  def index
    @clinicas = Clinica.all
  end

  def new 
    @clinicas = Clinica.new
  end

  def create
    @clinica = Clinica.new(clinica_params)
    if @clinica.save 
      clin = Clinica.last
      clin.update(name: @clinica.name, address: @clinica.address)
  
      redirect_to welcome_index_path
    else 
      render 'new'
    end    
  end

  def show 
    @clinicas = Clinica.find([:id])
  end

  private 
  def clinica_params
    params.require(:clinica).permit(:name,:address)
  end
end
