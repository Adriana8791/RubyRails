json.extract! mensaje, :id, :usuario_id, :comentario_id, :created_at, :updated_at
json.url mensaje_url(mensaje, format: :json)
