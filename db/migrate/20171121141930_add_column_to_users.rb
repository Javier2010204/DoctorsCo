class AddColumnToUsers < ActiveRecord::Migration[5.1]
	def change
		add_column :users, :last_name, :string
		add_column :users, :phone, :string
		add_column :users, :address, :string
		add_column :users, :specialty, :string
	end
end
