class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.date :date
      t.text :body
      t.references :patient, foreign_key: true
      t.references :consultation, foreign_key: true

      t.timestamps
    end
  end
end
