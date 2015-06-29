class AddDatosDePasajeRefToReserva < ActiveRecord::Migration
  def change
    add_reference :reservas, :datos_de_pasaje, index: true, foreign_key: true
  end
end
