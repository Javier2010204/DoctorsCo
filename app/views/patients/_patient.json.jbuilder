json.extract! patient, :id, :code, :first_name, :last_name, :identification_number, :email, :phone, :country, :city, :age, :birthdate, :sex, :annotations, :user_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
