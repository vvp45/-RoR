json.extract! blog, :id, :title, :discription, :image, :created_at, :updated_at
json.url blog_url(blog, format: :json)
