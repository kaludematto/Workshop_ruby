json.extract! exame_medico, :id, :nome, :tipo, :status, :laboratorio_id, :created_at, :updated_at
json.url exame_medico_url(exame_medico, format: :json)
