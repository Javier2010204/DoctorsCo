json.extract! prescription, :id, :date, :body, :patient_id, :consultation_id, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
