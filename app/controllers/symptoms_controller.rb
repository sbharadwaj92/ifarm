class SymptomsController < InheritedResources::Base
  def create
    @crop = Crop.find(params[:crop_id])
    @symptom = @crop.symptoms.create(symptom_params)
    redirect_to crop_path(@crop)
  end
 
  private
    def symptom_params
      params.require(:symptom).permit(:title, :text, :image)
    end
end
