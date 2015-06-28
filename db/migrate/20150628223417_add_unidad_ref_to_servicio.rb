class AddUnidadRefToServicio < ActiveRecord::Migration
  def change
    add_reference :servicios, :unidad, index: true, foreign_key: true
  end
end
