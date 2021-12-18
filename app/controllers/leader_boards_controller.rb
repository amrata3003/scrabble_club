class LeaderBoardsController < ApplicationController
  def index
    # Updated Participation count 3 because of unsufficient data
    ids = Player.joins(:participations).group('players.id').having("count(participations.id)>=3")&.pluck(:id)
    @players = Player.where(id: ids).includes(:participations).order("participations.score desc").limit(10)
  end
end
