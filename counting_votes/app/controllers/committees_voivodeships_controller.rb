class CommitteesVoivodeshipsController < InheritedResources::Base

  private

    def committees_voivodeship_params
      params.require(:committees_voivodeship).permit(:committee_id, :voivodeship_id)
    end
end

