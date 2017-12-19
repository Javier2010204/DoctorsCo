class AddDateToEvents < ActiveRecord::Migration[5.1]
	def change
		remove_column :events, :date, :datetime
		add_column :events, :date, :date
		add_column :events, :time, :time
	end
end
