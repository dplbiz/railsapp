json.extract! product, :id, :code, :name, :description, :language_code, :created_at, :updated_at
json.url product_url(product, format: :json)
