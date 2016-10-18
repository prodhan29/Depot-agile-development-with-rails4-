json.extract! duser, :id, :name, :created_at, :updated_at
json.url duser_url(duser, format: :json)