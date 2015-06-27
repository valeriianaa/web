class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.integer :nro
      t.integer :cantAsientos

      t.timestamps null: false
    end
  end
end
