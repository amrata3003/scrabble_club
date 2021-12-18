class Participation < ApplicationRecord
  belongs_to :game
  belongs_to :player
  belongs_to :opponent, class_name: 'Player', foreign_key: 'opponent_id'

  scope :won, ->(id = nil) { where(player_id: id) }
  scope :lost, ->(id = nil) { where(opponent_id: id) }
end
