# == Schema Information
#
# Table name: appoiments
#
#  id          :integer          not null, primary key
#  date        :date
#  hour        :time
#  annotations :text
#  patient_id  :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Appoiment < ApplicationRecord
	belongs_to :patient
	belongs_to :user

	def patient_name
		patient.try(:last_name)
	end

	def patient_name=(last_name)
		self.patient = Patient.find_by(last_name: last_name) if last_name.present?
	end		
end
