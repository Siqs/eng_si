class AddLatLonToClinica < ActiveRecord::Migration[6.0]
  def change
    add_column :clinicas, :lat, :float
    add_column :clinicas, :lon, :float
  end
end
