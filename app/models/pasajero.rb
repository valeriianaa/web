class Pasajero < ActiveRecord::Base
	has_many :datos_de_pasajes 
end
