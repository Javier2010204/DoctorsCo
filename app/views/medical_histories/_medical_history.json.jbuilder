json.extract! medical_history, :id, :weight, :size, :allergies, :medicine, :diseases, :user_id, :patient_id, :created_at, :updated_at
json.url medical_history_url(medical_history, format: :json)
