class CreateItinerarios < ActiveRecord::Migration
  def change
    create_table :itinerarios do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
