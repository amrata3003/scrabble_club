class Participation < ApplicationRecord
  belongs_to :game
  belongs_to :player
  belongs_to :opponent, class_name: 'Player', foreign_key: 'opponent_id'
end
