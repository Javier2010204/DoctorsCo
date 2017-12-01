class CreateConsultations < ActiveRecord::Migration[5.1]
  def change
    create_table :consultations do |t|
      t.references :patient, foreign_key: true
      t.string :type
      t.string :place
      t.string :subject
      t.text :annotations
      t.datetime :date
      t.text :diagnosis

      t.timestamps
    end
  end
end
