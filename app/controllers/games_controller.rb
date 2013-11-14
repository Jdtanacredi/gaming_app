class GamesController < ApplicationController
  
  def index
   @games = ["Secrect Number"]
  end

  def secret_number
  end

  def secret_number_play
   @app_guess = rand(1..5)
   @user_guess = params[:guess].to_i
   if @app_guess == @user_guess
      render "win"
   else
      render "lose"
   end
  end

end
