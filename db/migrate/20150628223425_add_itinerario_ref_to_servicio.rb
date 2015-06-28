class AddItinerarioRefToServicio < ActiveRecord::Migration
  def change
    add_reference :servicios, :itinerario, index: true, foreign_key: true
  end
end
