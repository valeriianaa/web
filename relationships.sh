# Relationships between models

# rails generate migration AddUserRefToProducts user:references

# class AddUserRefToProducts < ActiveRecord::Migration
#   def change
#     add_reference :products, :user, index: true, foreign_key: true
#   end
# end

# ========================
# = Para muchos a muchos =
# ========================

# class CreateItinerariosParadas < ActiveRecord::Migration
#   def change
#     create_table :itinerarios_paradas, id: false do |t|
#       t.belongs_to :itinerario, index: true
#       t.belongs_to :parada, index: true
#     end
#   end
# end

rails generate migration AddAsientoDeServicioRefToDatosDePasaje asiento_de_servicio:references

rails generate migration AddPasajeroRefToDatosDePasaje pasajero:references

rails generate migration AddItinerarioRefToParada itinerario:references

# Añadir una Ciudad como referencia en Parada, campo:reference
rails generate migration AddCiudadRefToParada ciudad:references

rails generate migration AddUnidadRefToServicio unidad:references

rails generate migration AddItinerarioRefToServicio itinerario:references

rails generate migration AddTipoDeServicioRefToServicio tipo_de_servicio:references

rails generate migration create_restaurants_users