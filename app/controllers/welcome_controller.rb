class WelcomeController < ApplicationController
  def index
    if params[:search]
      @lugares = Lugare.search(params[:search]).order("created_at DESC").page(params[:page]).per(5)
    else
      @lugares = Lugare.order('created_at DESC').page(params[:page]).per(5)
    end
  end
end
