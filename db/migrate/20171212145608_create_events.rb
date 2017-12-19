class CreateEvents < ActiveRecord::Migration[5.1]
	def change
		create_table :events do |t|
			t.datetime :date
			t.text :annotations
			t.references :patient, foreign_key: true
			t.references :user, foreign_key: true

			t.timestamps
		end
	end
end
