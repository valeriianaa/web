class CreateTipoDeServicios < ActiveRecord::Migration
  def change
    create_table :tipo_de_servicios do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
