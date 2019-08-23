class AddColumnAddressAndPhoneInContacts < ActiveRecord::Migration[5.1]
  def change
      add_column :contacts, :address, :string
      add_column :contacts, :phone, :integer
  end
end
