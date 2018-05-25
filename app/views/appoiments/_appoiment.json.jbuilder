json.extract! appoiment, :id, :date, :hour, :annotations, :patient_id, :user_id, :created_at, :updated_at
json.url appoiment_url(appoiment, format: :json)
