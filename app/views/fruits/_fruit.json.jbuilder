json.extract! fruit, :id, :name, :color, :flavor, :weight, :price, :availability, :image_url, :created_at, :updated_at
json.url fruit_url(fruit, format: :json)
