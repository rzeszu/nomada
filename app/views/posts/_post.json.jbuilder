json.extract! post, :id, :image_primary, :title, :date, :local, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
