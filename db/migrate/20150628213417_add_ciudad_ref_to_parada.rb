class AddCiudadRefToParada < ActiveRecord::Migration
  def change
    add_reference :paradas, :ciudad, index: true, foreign_key: true
  end
end
