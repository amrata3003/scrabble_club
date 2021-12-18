class Player < ApplicationRecord
  has_many :participations, dependent: :destroy
end
