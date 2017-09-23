class BmiController < ApplicationController
  protect_from_forgery expect: :confirm
  def input
  end
  def confirm
    height = params[:height]
    weight = params[:weight]
    @name = params[:name]
    @height = height
    @weight = height
    @bmi = calcBmi(height.to_f, weight.to_f)
    @idealWeight = calcIdealWeight(height.to_f, weight.to_f)
    @levelOfObesity = calcLevelOfObesity(@bmi)
  end

  private
  def calcBmi (h, w)
    return (w / ((h / 100) ** 2)).round
  end
  def calcIdealWeight (h, w)
    return (((h / 100) ** 2) * 22).round
  end
  def calcLevelOfObesity (bmi)
    if bmi < 18 then
      return 'レベル-1:低体重'
    elsif  bmi < 25 then
      return 'レベル0:普通体重'
    elsif  bmi < 30 then
      return 'レベル1:肥満1度'
    elsif  bmi < 35 then
      return 'レベル2:肥満2度'
    elsif  bmi < 40 then
      return 'レベル3:肥満3度'
    else
      return 'レベル4:肥満4度'
    end
  end
end
