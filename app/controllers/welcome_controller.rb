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
      coord = Geocoder.search(:address)
      coord = coord.first.coordinates
      clin.update(lat: coord[0],lon: coord[1])
      redirect_to welcome_index_path
    else 
      render 'new'
    end    

  end
  def show 
    @clinicas = Clinicas.find([:id])
  end

  private 
  def clinica_params
    params.require(:clinica).permit(:name,:address)
  end

  
end
