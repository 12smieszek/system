class VoivodeshipsController < InheritedResources::Base
  
  def index
    @voivodeships = Voivodeship.all
  end

  def show
     @voivodeship = Voivodeship.find(params[:id])
  end



  private

    def voivodeship_params
      params.require(:voivodeship).permit(:name, :authorized_number, :mandate_number)
    end
end

