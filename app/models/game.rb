class Game < ApplicationRecord
  has_many :participations, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
