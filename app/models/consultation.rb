# == Schema Information
#
# Table name: consultations
#
#  id            :integer          not null, primary key
#  patient_id    :integer
#  other         :string
#  place         :string
#  subject       :string
#  annotations   :text
#  date          :datetime
#  diagnosis     :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#  tratamiento   :text
#  sintomas      :text
#  antecedentes  :text
#  receta        :text
#  examen_fisico :text
#  fecha         :datetime
#  motivo        :text
#  diagnostico   :text
#  anotaciones   :text
#

class Consultation < ApplicationRecord
	belongs_to :patient
	belongs_to :user
	has_many :measurements, dependent: :destroy
	accepts_nested_attributes_for :measurements

	has_many :prescriptions, dependent: :destroy
	accepts_nested_attributes_for :prescriptions

	#, reject_if: proc {|attr| attr[:heigth, :weight, annotations, blod_pressure, breathing_rate, etc...].blank ?}

	def patient_name
		patient.try(:last_name)
	end

	def patient_name=(last_name)
		self.patient = Patient.find_by(last_name: last_name) if last_name.present?
	end	
end
