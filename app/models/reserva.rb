class Reserva < ActiveRecord::Base
    has_one :datos_de_pasaje

    def dato_pasaje_numero
		if self.datos_de_pasaje_id == nil
			return 0
		else
			return self.datos_de_pasaje_id
		end
	end

end
