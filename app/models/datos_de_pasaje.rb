class DatosDePasaje < ActiveRecord::Base
	belongs_to :asiento_de_servicio
	belongs_to :pasajero
end