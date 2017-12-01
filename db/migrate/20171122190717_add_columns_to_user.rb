class AddColumnsToUser < ActiveRecord::Migration[5.1]
	def change
		add_column :users, :avatar_content_type, :string
		add_column :users, :avatar_file_size, :integer
		add_column :users, :avatar_updated_at, :datetime
	end

	def down
		remove_column :users, :avatar_content_type, :string
		remove_column :users, :avatar_file_size, :integer
		remove_column :users, :avatar_updated_at, :datetime
	end
end
