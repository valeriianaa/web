class CreateItinerarioParadas < ActiveRecord::Migration
  def change
    create_table :itinerario_paradas do |t|
      t.belongs_to :itinerario, index: true
      t.belongs_to :parada, index: true
      t.timestamps null: false
    end
  end
end
