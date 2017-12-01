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

require 'test_helper'

class ConsultationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
