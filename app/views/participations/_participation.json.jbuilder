json.extract! participation, :id, :game_id, :player_id, :opponent_id, :score, :created_at, :updated_at
json.url participation_url(participation, format: :json)
