class SymptomsController < InheritedResources::Base
  def new
    @crop = Crop.find(params[:crop_id])
    @symptom = @crop.symptoms.build
    respond_with(@symptom)
  end

  def index
    @crop = Crop.find(params[:crop_id])
    @symptom = Symptom.find_by_id(params[:all])
    @symptoms = Symptom.all
  end

  def show
    @crop = Crop.find(params[:crop_id])
    @symptom = Symptom.find(params[:id])
  end

  def edit
    @crop = Crop.find(params[:crop_id])
    @symptom = Symptom.find(params[:id])
  end

  def update
    @crop = Crop.find(params[:crop_id])
    @symptom = @crop.symptoms.find(params[:id])

    if @crop.update_attributes(params[:crop])
      redirect_to(@crop)
    end
  end

  def create
    @crop = Crop.find(params[:crop_id])
    @symptom = @crop.symptoms.create(symptom_params)
    redirect_to crop_path(@crop)
  end

  def destroy
    @symptom = Symptom.find(params[:id])
    @symptom = @crop.symptom.find(params[:id])
    @symptom.destroy
    redirect_to symptoms_path

  end

  private
    def symptom_params
      params.require(:symptom).permit(:title, :text, :image, :cause, :remedy)
    end
end