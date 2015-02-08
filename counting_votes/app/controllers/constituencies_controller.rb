class ConstituenciesController < InheritedResources::Base

  def index
    @constituencies = Constituency.all
  end

  def show
     @constituency = Constituency.find(params[:id])
  end

  def new
    @constituency = Constituency.new
  end

  def create
    @constituency = Constituency.new(constituency_params)

    respond_to do |format|
      if @constituency.save
        format.html { redirect_to @constituency, notice: 'Constituency was successfully created.' }
        format.json { render :show, status: :created, location: @constituency }
      else
        format.html { render :new }
        format.json { render json: @constituency.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @constituency = Constituency.find(params[:id])
    @committee = Committee.find(params[:id])
  end

  def update
    respond_to do |format|
      if @constituency.update(constituency_params)
        format.html { redirect_to @constituency, notice: 'Constituency was successfully updated.' }
        format.json { render :show, status: :ok, location: @constituency }
      else
        format.html { render :edit }
        format.json { render json: @constituency.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_constituency
    @constituency = Constituency.find(params[:id])
  end

    def constituency_params
      params.require(:constituency).permit(:name, :mandate_number, :authorized_number, :empty_votes, :many_votes, :other_votes, :given_cards, :returned_cards, :voivodeship_id)
    end
end

