class AddNameToUsers < ActiveRecord::Migration[5.1]
	def change
		add_column :users, :avatar_file_name, :string
	end
end
