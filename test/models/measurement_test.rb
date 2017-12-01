# == Schema Information
#
# Table name: measurements
#
#  id                  :integer          not null, primary key
#  consultation_id     :integer
#  height              :decimal(, )
#  weight              :decimal(, )
#  temperature         :integer
#  blood_pressure      :string
#  heart_rate          :integer
#  breathing_frequency :integer
#  date                :datetime
#  annotations         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class MeasurementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
