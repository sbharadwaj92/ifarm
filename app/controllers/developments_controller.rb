class DevelopmentsController < InheritedResources::Base
  def new
    @crop = Crop.find(params[:crop_id])
    @development = @crop.developments.build
    respond_with(@development)
  end

  def index
    @crop = Crop.find(params[:crop_id])
    @development = Development.find_by_id(params[:all])
    @developments = Development.all
  end

  def show
    @crop = Crop.find(params[:crop_id])
    @development = Development.find(params[:id])
  end

  def edit
    @crop = Crop.find(params[:crop_id])
    @development = Development.find(params[:id])
  end

  def create
    @crop = Crop.find(params[:crop_id])
    @development = @crop.developments.create(development_params)
    redirect_to crop_path(@crop)
  end

  def destroy
    @development = Development.find(params[:id])
    @development = @crop.development.find(params[:id])
    @development.destroy
    redirect_to developments_path

  end

  private
    def development_params
      params.require(:development).permit(:title, :text, :image)
    end
end