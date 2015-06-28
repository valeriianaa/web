class AddAsientoDeServicioRefToDatosDePasaje < ActiveRecord::Migration
  def change
    add_reference :datos_de_pasajes, :asiento_de_servicio, index: true, foreign_key: true
  end
end
