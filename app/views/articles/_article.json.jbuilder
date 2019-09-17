json.extract! article, :id, :title, :description, :deadline, :country, :typeofscholarship, :institute, :benefits, :elgibilities, :process, :url, :created_at, :updated_at
json.url article_url(article, format: :json)
