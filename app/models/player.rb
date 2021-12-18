class Player < ApplicationRecord
  has_many :participations, dependent: :destroy

  validates :name, :joining_date, presence: true
  validates :email, presence: true, uniqueness: true
end
