class Itinerario < ActiveRecord::Base
	has_many :itinerario_paradas, -> { order(:id => :asc) }
	has_many :paradas, :through => :itinerario_paradas

	has_many :servicios

	def self.recorridosWithParadas(po,pd)
		itinerarios = po.itinerarios + pd.itinerarios
		itinerarios = itinerarios.uniq

		itinerarios_filtrados = []
		for it in itinerarios  do 
			if it.paradas.index(po) < it.paradas.index(pd)
				itinerarios_filtrados.push(it)
			end
		end
		return itinerarios_filtrados
	end
end