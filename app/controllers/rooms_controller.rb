class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.create(room_params)
    if @room.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  private

    def room_params
      params.require(:room).permit(:name, :price, :image, :image_thumbnail)
    end
end
