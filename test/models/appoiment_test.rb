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

require 'test_helper'

class AppoimentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
