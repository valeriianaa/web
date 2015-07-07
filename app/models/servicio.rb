class Servicio < ActiveRecord::Base
	belongs_to :unidad
	belongs_to :itinerario
	belongs_to :tipo_de_servicio
	has_many :asiento_de_servicios

	def self.asientosDisponibles(id_serv)
		puts 'asientosDisponibles > id_serv', id_serv
		return AsientoDeServicio.where(servicio_id:id_serv).where(estado: true)
	end

	def self.buscarServicio(po, pd, fecha_serv)
		its = Itinerario.recorridosWithParadas(po,pd)
		servicios_disponibles = []
		for it in its
			servicios_disponibles += Servicio.where(itinerario_id:it).where(fecha:fecha_serv)
		end
		return servicios_disponibles
	end
end
