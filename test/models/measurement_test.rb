# == Schema Information
#
# Table name: measurements
#
#  id                   :integer          not null, primary key
#  consultation_id      :integer
#  height               :decimal(, )
#  weight               :decimal(, )
#  temperature          :integer
#  blood_pressure       :string
#  heart_rate           :integer
#  breathing_frequency  :integer
#  date                 :datetime
#  annotations          :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  talla                :integer
#  fum                  :date
#  antitetanica         :string
#  fuma                 :string
#  semanas_amenorrea    :string
#  tension_arterial     :integer
#  alt_uterina          :decimal(, )
#  FCF                  :integer
#  edad_gestacion       :integer
#  tamanio_fetal_acorde :string
#  contracciones        :string
#  dilatacion_cerv      :decimal(, )
#  tipo_terminacion     :decimal(, )
#  tiempo_terminacion   :datetime
#  muerte_intraut       :string
#  episiotomia          :string
#  desgarros            :string
#  sexo                 :string
#  peso_al_nacer        :decimal(, )
#  talla_al_nacer       :integer
#  edad_por_ex_fisico   :string
#  patologias           :text
#

require 'test_helper'

class MeasurementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
