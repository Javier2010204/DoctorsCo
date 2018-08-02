# == Schema Information
#
# Table name: medical_histories
#
#  id         :integer          not null, primary key
#  weight     :integer
#  size       :decimal(, )
#  allergies  :text
#  medicine   :text
#  diseases   :text
#  user_id    :integer
#  patient_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MedicalHistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
