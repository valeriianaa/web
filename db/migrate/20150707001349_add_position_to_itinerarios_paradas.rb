class AddPositionToItinerariosParadas < ActiveRecord::Migration
  def change
    add_column :itinerarios_paradas, :position, :integer
  end
end
