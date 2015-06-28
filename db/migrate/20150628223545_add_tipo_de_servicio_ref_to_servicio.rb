class AddTipoDeServicioRefToServicio < ActiveRecord::Migration
  def change
    add_reference :servicios, :tipo_de_servicio, index: true, foreign_key: true
  end
end
