class WelcomeController < ApplicationController
  def index
    @clinicas = Clinica.all
  end
  
  def show
  end

  def geocode
    atual = params['endereco_atual']    
    coord = Geocoder.search(atual)
    p "olar"
    p coord
    cordenadas = coord.first
    unless cordenadas.nil? 
      cordenadas = cordenadas.coordinates
    end  
    render :js => "
    localStorage.setItem('coordenadaAtual','#{cordenadas}');
    document.location.reload();
    "
  end


end
