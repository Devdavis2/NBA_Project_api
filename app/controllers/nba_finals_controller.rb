class NbaFinalsController < ApplicationController
  before_action :set_nba_final, only: [:show, :update, :destroy]

  # GET /nba_finals
  def index
    @nba_finals = NbaFinal.all

    render json: @nba_finals
  end

  # GET /nba_finals/1
  def show
    render json: @nba_final
  end

  # POST /nba_finals
  # def create
  #   @nba_final = NbaFinal.new(nba_final_params)

  #   if @nba_final.save
  #     render json: @nba_final, status: :created, location: @nba_final
  #   else
  #     render json: @nba_final.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /nba_finals/1
  # def update
  #   if @nba_final.update(nba_final_params)
  #     render json: @nba_final
  #   else
  #     render json: @nba_final.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /nba_finals/1
  # def destroy
  #   @nba_final.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nba_final
      @nba_final = NbaFinal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nba_final_params
      params.require(:nba_final).permit(:team, :conference)
    end
end
