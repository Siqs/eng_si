class AddCoordenadasToClinica < ActiveRecord::Migration[6.0]
  def change
    add_column :clinicas, :latitude, :float
    add_column :clinicas, :longitude, :float
  end
end
