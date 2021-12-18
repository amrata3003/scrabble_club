class Game < ApplicationRecord
  has_many :participations, dependent: :destroy
end
