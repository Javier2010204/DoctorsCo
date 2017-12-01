class RenameColumnTypeToOther < ActiveRecord::Migration[5.1]
  def change
  	rename_column :consultations, :type, :other
  end
end
