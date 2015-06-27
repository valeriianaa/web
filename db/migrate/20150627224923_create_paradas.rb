class CreateParadas < ActiveRecord::Migration
  def change
    create_table :paradas do |t|
      t.string :nombre
      t.string :direccion

      t.timestamps null: false
    end
  end
end
