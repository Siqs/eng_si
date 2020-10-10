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
      coord = Geocoder.search(@clinica.address)
      cordenadas = coord.first.coordinates
      clin.update(lat: cordenadas[0],lon: cordenadas[1])
      redirect_to welcome_index_path
    else 
      render 'new'
    end    

  end
  def show 
  end

  private 
  def clinica_params
    params.require(:clinica).permit(:name,:address)
  end

  
end
