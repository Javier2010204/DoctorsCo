# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  name                   :string
#  permission_level       :integer          default(1)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  last_name              :string
#  phone                  :string
#  address                :string
#  specialty              :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  avatar_file_name       :string
#

class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
				 :recoverable, :rememberable, :trackable, :validatable

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "200x200>" }, default_url: "/images/:style/default.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	has_many :patients
	has_many :posts
	has_many :events
	has_many :consultations
end
