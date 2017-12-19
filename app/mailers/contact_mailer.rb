class ContactMailer < ApplicationMailer
	def new_contact(contact)
		@contact = contact

		mail(from: contact.email, subject: contact.subject)
	end
end
