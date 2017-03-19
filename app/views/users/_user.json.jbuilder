json.extract! user, :id, :first_name, :last_name, :username, :password, :email, :status, :created_by, :created_at, :updated_by, :updated_at, :created_at, :updated_at
json.url user_url(user, format: :json)
