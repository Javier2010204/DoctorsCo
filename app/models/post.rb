# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
	belongs_to :user

	validates :title, presence: true
	validates :body, presence: true, length: {minimum: 20}
end
