class CreatePasajeros < ActiveRecord::Migration
  def change
    create_table :pasajeros do |t|
      t.string :dni
      t.string :nombre

      t.timestamps null: false
    end
  end
end
