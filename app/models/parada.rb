class Parada < ActiveRecord::Base
	belongs_to :ciudad
	has_many :itinerario_paradas
	has_many :itinerarios, :through => :itinerario_paradas
end
