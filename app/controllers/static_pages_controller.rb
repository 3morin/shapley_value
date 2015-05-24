class StaticPagesController < ApplicationController

  def home
    @value = Value.all.build
  end
end
