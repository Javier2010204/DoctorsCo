class AddUserIdToConsultations < ActiveRecord::Migration[5.1]
	def change
		add_reference :consultations, :user, foreign_key: true
	end
end
