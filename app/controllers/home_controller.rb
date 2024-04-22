class HomeController < ApplicationController
  def home_screen
    render({:template => "dice_templates/home"})
  end

  def roll
    @number_of_dice = params[:number_of_dice].to_i
    @sides = params[:sides].to_i

    @results = Array.new(@number_of_dice) {rand(1..@sides)}

    render({:template => "dice_templates/dice"})
  end
end
