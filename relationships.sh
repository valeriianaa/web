# Relationships between models

# rails generate migration AddUserRefToProducts user:references

# class AddUserRefToProducts < ActiveRecord::Migration
#   def change
#     add_reference :products, :user, index: true, foreign_key: true
#   end
# end

rails generate migration AddAsientoDeServicioRefToDatosDePasaje asiento_de_servicio:references

rails generate migration AddPasajeroRefToDatosDePasaje pasajero:references