class Servicio < ActiveRecord::Base
	belongs_to :unidad
	belongs_to :itinerario
	belongs_to :tipo_de_servicio

	def self.buscarServicio(po, pd, fecha)
		its = Itinerario.recorridosWithParadas(po,pd)
		servicios_disponibles = []
		for it in its
			servicios_disponibles += Servicio.where("itinerario_id = ? AND fecha = ?", it, fecha)
		end
		return servicios_disponibles
	end
end
