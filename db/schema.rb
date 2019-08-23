# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190823123927) do

  create_table "appoiments", force: :cascade do |t|
    t.date "date"
    t.time "hour"
    t.text "annotations"
    t.integer "patient_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_appoiments_on_patient_id"
    t.index ["user_id"], name: "index_appoiments_on_user_id"
  end

  create_table "consultations", force: :cascade do |t|
    t.integer "patient_id"
    t.string "other"
    t.string "place"
    t.string "subject"
    t.text "annotations"
    t.datetime "date"
    t.text "diagnosis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.text "tratamiento"
    t.text "sintomas"
    t.text "antecedentes"
    t.text "receta"
    t.text "examen_fisico"
    t.datetime "fecha"
    t.text "motivo"
    t.text "diagnostico"
    t.text "anotaciones"
    t.index ["patient_id"], name: "index_consultations_on_patient_id"
    t.index ["user_id"], name: "index_consultations_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "subject"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.integer "phone"
  end

  create_table "events", force: :cascade do |t|
    t.text "annotations"
    t.integer "patient_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.time "time"
    t.index ["patient_id"], name: "index_events_on_patient_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "measurements", force: :cascade do |t|
    t.integer "consultation_id"
    t.decimal "height"
    t.decimal "weight"
    t.integer "temperature"
    t.string "blood_pressure"
    t.integer "heart_rate"
    t.integer "breathing_frequency"
    t.datetime "date"
    t.text "annotations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "talla"
    t.date "fum"
    t.string "antitetanica"
    t.string "fuma"
    t.string "semanas_amenorrea"
    t.integer "tension_arterial"
    t.decimal "alt_uterina"
    t.integer "FCF"
    t.integer "edad_gestacion"
    t.string "tamanio_fetal_acorde"
    t.string "contracciones"
    t.decimal "dilatacion_cerv"
    t.decimal "tipo_terminacion"
    t.datetime "tiempo_terminacion"
    t.string "muerte_intraut"
    t.string "episiotomia"
    t.string "desgarros"
    t.string "sexo"
    t.decimal "peso_al_nacer"
    t.integer "talla_al_nacer"
    t.string "edad_por_ex_fisico"
    t.text "patologias"
    t.index ["consultation_id"], name: "index_measurements_on_consultation_id"
  end

  create_table "medical_histories", force: :cascade do |t|
    t.integer "weight"
    t.decimal "size"
    t.text "allergies"
    t.text "medicine"
    t.text "diseases"
    t.integer "user_id"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_medical_histories_on_patient_id"
    t.index ["user_id"], name: "index_medical_histories_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "code"
    t.string "first_name"
    t.string "last_name"
    t.string "identification_number"
    t.string "email"
    t.string "phone"
    t.string "country"
    t.string "city"
    t.integer "age"
    t.date "birthdate"
    t.string "sex"
    t.text "annotations"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.integer "weight"
    t.string "size"
    t.text "allergies"
    t.text "medicines"
    t.text "diseases"
    t.text "departament"
    t.string "state", default: "active"
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.date "date"
    t.text "body"
    t.integer "patient_id"
    t.integer "consultation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consultation_id"], name: "index_prescriptions_on_consultation_id"
    t.index ["patient_id"], name: "index_prescriptions_on_patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.integer "permission_level", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "phone"
    t.string "address"
    t.string "specialty"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
