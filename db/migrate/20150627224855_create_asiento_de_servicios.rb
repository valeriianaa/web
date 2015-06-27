class CreateAsientoDeServicios < ActiveRecord::Migration
  def change
    create_table :asiento_de_servicios do |t|
      t.integer :nro
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
