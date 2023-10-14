json.extract! baby_profile, :id, :gender, :mothers_name, :fathers_name, :expected_date, :description, :created_at, :updated_at
json.url baby_profile_url(baby_profile, format: :json)
