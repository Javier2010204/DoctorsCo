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

require 'test_helper'

class PrescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
