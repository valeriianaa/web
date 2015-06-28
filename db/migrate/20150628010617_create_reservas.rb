class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.string :estado

      t.timestamps null: false
    end
  end
end
