class AddToConsulations < ActiveRecord::Migration[5.1]
  def change
    add_column :consultations, :tratamiento, :text
    add_column :consultations, :sintomas, :text
    add_column :consultations, :antecedentes, :text
    add_column :consultations, :receta, :text
    add_column :consultations, :examen_fisico, :text
  end
end

