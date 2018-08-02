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
#  address               :string
#  weight                :integer
#  size                  :string
#  allergies             :text
#  medicines             :text
#  diseases              :text
#  departament           :text
#  state                 :string           default("active")
#

class Patient < ApplicationRecord
  belongs_to :user
  has_many :consultations
  has_many :events
  has_many :appoiments
  validates :last_name, presence: true
end
