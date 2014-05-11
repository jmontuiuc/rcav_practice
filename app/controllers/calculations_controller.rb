class CalculationsController < ApplicationController
  def home
  end

  def square
    @the_number = params[:number].to_f
    @answer = @the_number ** 2
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    @int = params[:interest_rate].to_f/100
    @num = params[:number_of_payments].to_f
    @pv = params[:present_value].to_f
    @payment = (@int*@pv)/(1-(1+@int)**(-@num))
  end
end

# M = P * ( J / (1 - (1 + J)^ -N))
