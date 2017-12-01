json.extract! consultation, :id, :patient_id, :type, :place, :subject, :annotations, :date, :diagnosis, :created_at, :updated_at
json.url consultation_url(consultation, format: :json)
