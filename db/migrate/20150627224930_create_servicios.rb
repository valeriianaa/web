class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.date :fecha
      t.time :horaSalida
      t.time :horaLlegada

      t.timestamps null: false
    end
  end
end
