# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  subject    :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ApplicationRecord
	#validates :email, presence{presence: true, message: 'Parece que olvidaste poner el correo'}
	validates_presence_of :name, message: "Parece que olvidate escribir tu nombre"
	validates_presence_of :body, message: "El cuerpo del mensaje no puede estar vacío"
	validates_format_of :email, with: Devise::email_regexp, message: "no enviaste un correo valido, intentalo de nuevo"
end
