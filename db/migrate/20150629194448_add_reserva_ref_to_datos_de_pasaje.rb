class AddReservaRefToDatosDePasaje < ActiveRecord::Migration
  def change
    add_reference :datos_de_pasajes, :reserva, index: true, foreign_key: true
  end
end
