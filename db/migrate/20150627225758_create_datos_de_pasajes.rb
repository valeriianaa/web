class CreateDatosDePasajes < ActiveRecord::Migration
  def change
    create_table :datos_de_pasajes do |t|

      t.timestamps null: false
    end
  end
end
