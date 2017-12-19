# == Schema Information
#
# Table name: consultations
#
#  id          :integer          not null, primary key
#  patient_id  :integer
#  other       :string
#  place       :string
#  subject     :string
#  annotations :text
#  date        :datetime
#  diagnosis   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Consultation < ApplicationRecord
	belongs_to :patient
	has_many :measurements, dependent: :destroy
	accepts_nested_attributes_for :measurements

	#, reject_if: proc {|attr| attr[:heigth, :weight, annotations, blod_pressure, breathing_rate, etc...].blank ?}

	def patient_name
		if self.patient
			self.patient.first_name
			self.patient.last_name
		else
			' '
		end
	end
end
