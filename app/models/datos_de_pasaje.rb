class DatosDePasaje < ActiveRecord::Base
	belongs_to :asiento_de_servicio
	belongs_to :pasajero


	def numero
		if self.id == nil
			dato = DatosDePasaje.last.id
			return dato +1
		else
			return self.id
		end
	end

	def reserva_numero
		if self.reserva_id == nil
			return 0
		else
			return self.reserva_id
		end
	end

	# def venta_numero
	# 	if self.id == nil
	# 		return 0
	# 	else
	# 		return self.id
	# 	end
	# end

end