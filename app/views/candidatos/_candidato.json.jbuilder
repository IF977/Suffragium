json.extract! candidato, :id, :nome, :numero, :partido, :created_at, :updated_at
json.url candidato_url(candidato, format: :json)