class CropsController < ApplicationController
  def new
    @crop = Crop.new
  end
 
  def create
    @crop = Crop.new(crop_params)

    if @crop.save
      redirect_to @crop
    else
      render 'new'
    end
  end

  def index
    @crops = Crop.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
  end

  def show
    @crop = Crop.find(params[:id])
  end

  def edit
    @crop = Crop.find(params[:id])
  end

  def update
    @crop = Crop.find(params[:id])

    if @crop.update(crop_params)
      redirect_to @crop
    else
      render 'edit'
    end
  end

  def destroy
    @crop = Crop.find(params[:id])

    @crop.destroy 
    redirect_to crops_path
  end

  private
  def crop_params
    params.require(:crop).permit(:title, :text, :image)
  end

end