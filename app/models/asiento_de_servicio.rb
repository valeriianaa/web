class AsientoDeServicio < ActiveRecord::Base
	has_many :datos_de_pasajes
	belongs_to :servicio

end
