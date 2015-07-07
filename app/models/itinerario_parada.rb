class ItinerarioParada < ActiveRecord::Base
	belongs_to :parada
	belongs_to :itinerario
end