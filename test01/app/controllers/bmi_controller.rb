class BmiController < ApplicationController
  protect_from_forgery expect: :confirm
  def index
  end
  def confirm
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
  end
end
