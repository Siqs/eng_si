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



  def geocode
    atual = params['endereco_atual']    
    coord = Geocoder.search(atual)
    cordenadas = coord.first
    unless cordenadas.nil? 
      cordenadas = cordenadas.coordinates
    end  
    render :js => "localStorage.setItem('coordenadaAtual','#{cordenadas}');
    document.location.reload();"
  end

  private 
  def clinica_params
    params.require(:clinica).permit(:name,:address)
  end
 end
