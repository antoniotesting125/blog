json.extract! recomendacion, :id, :titulo, :contenido, :user_id, :created_at, :updated_at
json.url recomendacion_url(recomendacion, format: :json)
