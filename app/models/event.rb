# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  annotations :text
#  patient_id  :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  date        :date
#  time        :time
#

class Event < ApplicationRecord
	belongs_to :patient
	belongs_to :user
end
