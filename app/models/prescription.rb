# == Schema Information
#
# Table name: prescriptions
#
#  id              :integer          not null, primary key
#  date            :date
#  body            :text
#  patient_id      :integer
#  consultation_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Prescription < ApplicationRecord
  belongs_to :patient
  belongs_to :consultation
end
