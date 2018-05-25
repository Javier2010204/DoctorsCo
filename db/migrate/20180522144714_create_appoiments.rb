class CreateAppoiments < ActiveRecord::Migration[5.1]
  def change
    create_table :appoiments do |t|
      t.date :date
      t.time :hour
      t.text :annotations
      t.references :patient, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
