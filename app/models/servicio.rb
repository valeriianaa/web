class Servicio < ActiveRecord::Base
	belongs_to :unidad
	belongs_to :itinerario
	belongs_to :tipo_de_servicio
end
