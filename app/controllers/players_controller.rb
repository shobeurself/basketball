class PlayersController < ApplicationController
	def index
		@players = Player.all
	end
	def show
		@player = Player.find(params[:id])
	end 
	def edit
		@player = Player.find(params[:id])
	end
	def destroy
		@player = Player.find(params[:id])
		@player.destroy

		redirect_to_players_path
	end
	def create
		@team = Team.find(params[:team_id])
		@player = @team.players.create(player_params)
		redirect_to team_path(@team)
	end
	def update
		@team = Team.find(params[:team_id])
		@player = @team.players.find(params[:id])

		if @player.update(player_params)
			redirect_to team_path(@team)
		else
			render 'edit'
		end
	end
	def new
		@player = Player.new
	end
	private def player_params
		params.require(:player).permit(:name)
	end
end
