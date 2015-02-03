class SharksController < ApplicationController
  before_action :set_shark, only: [:show, :edit, :update, :destroy]

  def index
    @sharks = Shark.all
  end

  def new
    @shark = Shark.new
  end

  def create
    @shark = Shark.new(shark_params)
    if @shark.save
      redirect_to @shark
    else render :new
    end
  end

  def edit
  end

  def show
  end

  def destroy
    @shark.destroy
      redirect_to sharks_url
  end

  def update
      if @shark.update(shark_params)
        redirect_to @shark
      end
  end

private
  def set_shark
      @shark = Shark.find(params[:id])
    end

  def shark_params
    params.require(:shark).permit(:size, :species, :maneater, :date_of_attack, :name)
  end

end
