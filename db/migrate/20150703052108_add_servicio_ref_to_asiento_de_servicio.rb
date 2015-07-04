class AddServicioRefToAsientoDeServicio < ActiveRecord::Migration
  def change
    add_reference :asiento_de_servicios, :servicio, index: true, foreign_key: true
  end
end
