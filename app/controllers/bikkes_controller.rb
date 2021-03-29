class BikkesController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @bikke = Bikke.new
  end

  def create
    @bikke = Bikke.new(bikke_params)
    if @bikke.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

end
