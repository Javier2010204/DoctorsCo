# == Schema Information
#
# Table name: patients
#
#  id                    :integer          not null, primary key
#  code                  :integer
#  first_name            :string
#  last_name             :string
#  identification_number :string
#  email                 :string
#  phone                 :string
#  country               :string
#  city                  :string
#  age                   :integer
#  birthdate             :date
#  sex                   :string
#  annotations           :text
#  user_id               :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Patient < ApplicationRecord
  belongs_to :user
  has_many :consultations
  has_many :events
  has_many :appoiments
  validates :first_name, presence: true

end
