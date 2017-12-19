class AddColumnsToMeasurements < ActiveRecord::Migration[5.1]
	def change
		#embarazo actual
		add_column :measurements, :talla, :integer
		add_column :measurements, :fum, :date
		add_column :measurements, :antitetanica, :string
		add_column :measurements, :fuma, :string
		add_column :measurements, :semanas_amenorrea, :string
		add_column :measurements, :tension_arterial, :integer
		add_column :measurements, :alt_uterina, :decimal
		add_column :measurements, :FCF, :integer
		#parto/aborto
		add_column :measurements, :edad_gestacion, :integer
		add_column :measurements, :tamanio_fetal_acorde, :string
		add_column :measurements, :contracciones, :string
		add_column :measurements, :dilatacion_cerv, :decimal
		add_column :measurements, :tipo_terminacion, :decimal #opciones
		add_column :measurements, :tiempo_terminacion, :datetime 
		add_column :measurements, :muerte_intraut, :string #si/no
		add_column :measurements, :episiotomia, :string #si/no
		add_column :measurements, :desgarros, :string #si/no
		#Recien nacido
		add_column :measurements, :sexo, :string
		add_column :measurements, :peso_al_nacer, :decimal #en gramos
		add_column :measurements, :talla_al_nacer, :integer #en centimetros
		add_column :measurements, :edad_por_ex_fisico, :string 
		add_column :measurements, :patologias, :text #en centimetros
	end

	def down
		remove_column :measurements, :nombre_campo, :tipo
		remove_column :measurements, :talla, :integer
		remove_column :measurements, :fum, :date
		remove_column :measurements, :antitetanica, :string
		remove_column :measurements, :fuma, :string
		remove_column :measurements, :semanas_amenorrea, :string
		remove_column :measurements, :tension_arterial, :integer
		remove_column :measurements, :alt_uterina, :decimal
		remove_column :measurements, :FCF, :integer
		#parto/aborto
		remove_column :measurements, :edad_gestacion, :integer
		remove_column :measurements, :tamanio_fetal_acorde, :string
		remove_column :measurements, :contracciones, :string
		remove_column :measurements, :dilatacion_cerv, :decimal
		remove_column :measurements, :tipo_terminacion, :decimal #opciones
		remove_column :measurements, :tiempo_terminacion, :datetime 
		remove_column :measurements, :muerte_intraut, :string #si/no
		remove_column :measurements, :episiotomia, :string #si/no
		remove_column :measurements, :desgarros, :string #si/no
		#Recien nacido
		remove_column :measurements, :sexo, :string
		remove_column :measurements, :peso_al_nacer, :decimal #en gramos
		remove_column :measurements, :talla_al_nacer, :integer #en centimetros
		remove_column :measurements, :edad_por_ex_fisico, :string 
		remove_column :measurements, :patologias, :text #en centimetro
	end
end
