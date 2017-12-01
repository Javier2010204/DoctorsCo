class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.integer :code
      t.string :first_name
      t.string :last_name
      t.string :identification_number
      t.string :email
      t.string :phone
      t.string :country
      t.string :city
      t.integer :age
      t.date :birthdate
      t.string :sex
      t.text :annotations
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
