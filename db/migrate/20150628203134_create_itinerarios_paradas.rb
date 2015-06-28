class CreateItinerariosParadas < ActiveRecord::Migration
  def change
    create_table :itinerarios_paradas, id: false do |t|
      t.belongs_to :itinerario, index: true
      t.belongs_to :parada, index: true
    end
  end
end