json.extract! seance, :id, :titre, :contenu, :url_video, :url_question, :created_at, :updated_at
json.url seance_url(seance, format: :json)