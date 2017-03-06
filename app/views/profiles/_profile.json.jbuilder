json.extract! profile, :id, :gender, :gender_pref, :age, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
