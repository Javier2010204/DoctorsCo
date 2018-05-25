class AddColumnsToConsultations < ActiveRecord::Migration[5.1]
  def change
    add_column :consultations, :fecha, :datetime
    add_column :consultations, :motivo, :text
    add_column :consultations, :diagnostico, :text
    add_column :consultations, :anotaciones, :text
  end
end
