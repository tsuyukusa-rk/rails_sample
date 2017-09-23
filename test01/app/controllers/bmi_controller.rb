class BmiController < ApplicationController
  protect_from_forgery expect: :confirm
  def input
  end
  def confirm
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
  end
end
