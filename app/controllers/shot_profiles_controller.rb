class ShotProfilesController < ApplicationController
  before_action :set_shot_profile, only: [:show, :update, :destroy]

  # GET /shot_profiles
  def index
    shot_profiles = ShotProfile.where(nba_final_id: params[:nba_final_id])

    render json: shot_profiles
  end

  # GET /shot_profiles/1
  def show
    render json: @shot_profile
  end

  # POST /shot_profiles
  def create
    @shot_profile = ShotProfile.new(shot_profile_params)

    if @shot_profile.save
      render json: @shot_profile, status: :created, location: @shot_profile
    else
      render json: @shot_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shot_profiles/1
  def update
    if @shot_profile.update(shot_profile_params)
      render json: @shot_profile
    else
      render json: @shot_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shot_profiles/1
  def destroy
    @shot_profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shot_profile
      @shot_profile = ShotProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shot_profile_params
      params.require(:shot_profile).permit(:field_goals_made, :field_goals_attempted, :field_goal_percentage, :rank)
    end
end
