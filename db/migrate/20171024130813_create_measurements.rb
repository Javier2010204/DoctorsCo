class CreateMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :measurements do |t|
      t.references :consultation, foreign_key: true
      t.decimal :height
      t.decimal :weight
      t.integer :temperature
      t.string :blood_pressure
      t.integer :heart_rate
      t.integer :breathing_frequency
      t.datetime :date
      t.text :annotations

      t.timestamps
    end
  end
end

