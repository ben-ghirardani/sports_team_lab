class GamesController < ApplicationController

    def index
        games = Game.where( {team: params[:team_id]} )
        render :json => games.as_json({include: :league})
    end

    # def show
    #     game = Game.find(params[:id])
    #     render :json => game
    # end

end