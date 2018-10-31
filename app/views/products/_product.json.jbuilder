json.extract! product, :id, :name, :price, :where_from, :material, :description, :quantity, :category, :care, :available, :color, :created_at, :updated_at
json.url product_url(product, format: :json)
