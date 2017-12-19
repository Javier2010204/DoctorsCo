class Contact < ApplicationRecord
	validates :email, presence: true
	validates :name, presence: true
	validates :body, presence: true

	after_create :send_mail

	private

		def send_mail
			ContactMailer.new_contact(self).deliver_now
		end
end
