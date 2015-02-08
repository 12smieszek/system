class VotesController < InheritedResources::Base
  
  def create
  @vote = Vote.create( vote_params )
  @constituency = Constituency.find(params[:id])
  @committee = Committee.find(params[:id])   
  end

  private

    def vote_params
      params.require(:vote).permit(:number, :committee_id, :constituency_id)
    end

    def committee_params
    params.require(:committee).permit(:name, :committee_id)
    end

    def constituency_params
      params.require(:constituency).permit(:name, :empty_votes, :many_votes, :other_votes, :given_cards, :returned_cards, :voivodeship_id)
    end
end

