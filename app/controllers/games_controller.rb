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

  def rock_paper_scissors_play
   @user_throw = params[:throw]
   @app_throw = ["rock","paper","scissor"].sample
   if @user_throw == @app_throw
      @status = "you tied"
   elsif @user_throw == "rock" && @app_throw == "paper"
      @status = "you lose"
   elsif @user_throw == "paper" && @app_throw == "scissor"
      @status = "you lose"
   elsif @user_throw == "scissor" && @app_throw == "rock"
      @status = "you lose"
   else
      @status = "You Win!"
   end
  end

end
