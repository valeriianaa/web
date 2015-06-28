class AddPasajeroRefToDatosDePasaje < ActiveRecord::Migration
  def change
    add_reference :datos_de_pasajes, :pasajero, index: true, foreign_key: true
  end
end
