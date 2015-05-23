class ValuesController < ApplicationController

  def show
    @value = Value.find(params[:id])
  end

  def new
    @value = Value.new
  end

  def create
    @value = Value.new(value_params)
    if @value.save
      redirect_to @value
    else
      render 'new'
    end
  end

    private

  def value_params
    params.require(:value).permit(:value_a, :value_b)
  end
end
