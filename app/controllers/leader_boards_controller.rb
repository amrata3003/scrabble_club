class LeaderBoardsController < ApplicationController
  def index
    ids = Player.joins(:participations).group('players.id').having("count(participations.id)>=10")&.pluck(:id)
    @players = Player.where(id: ids).includes(:participations).order("participations.score desc").limit(10)
  end
end
