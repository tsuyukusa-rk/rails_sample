class BmiController < ApplicationController
  protect_from_forgery expect: :confirm
  def input
  end
  def confirm
    height = params[:height]
    weight = params[:weight]
    @name = params[:name]
    @height = height.to_f
    @weight = height.to_f
    calc(height.to_f, weight.to_f)
  end

  private
  def calc (h, w)
    @bmi = (w / ((h / 100) ** 2)).round
    @idealWeight = (((h / 100) ** 2) * 22).round
    if @bmi < 18 then
      @levelOfObesity = 'レベル-1:低体重'
    elsif  @bmi < 25 then
      @levelOfObesity = 'レベル0:普通体重'
    elsif  @bmi < 30 then
      @levelOfObesity = 'レベル1:肥満1度'
    elsif  @bmi < 35 then
      @levelOfObesity = 'レベル2:肥満2度'
    elsif  @bmi < 40 then
      @levelOfObesity = 'レベル3:肥満3度'
    else
      @levelOfObesity = 'レベル4:肥満4度'
    end
  end
end
