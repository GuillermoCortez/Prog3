class PilotTeamsController < ApplicationController
  before_action :set_pilot_team, only: %i[ show edit update destroy ]

  # GET /pilot_teams or /pilot_teams.json
  def index
    @pilot_teams = PilotTeam.all
  end

  # GET /pilot_teams/1 or /pilot_teams/1.json
  def show
  end

  # GET /pilot_teams/new
  def new
    @pilot_team = PilotTeam.new
  end

  # GET /pilot_teams/1/edit
  def edit
  end

  # POST /pilot_teams or /pilot_teams.json
  def create
    @pilot_team = PilotTeam.new(pilot_team_params)

    respond_to do |format|
      if @pilot_team.save
        format.html { redirect_to @pilot_team, notice: "Pilot team was successfully created." }
        format.json { render :show, status: :created, location: @pilot_team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pilot_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pilot_teams/1 or /pilot_teams/1.json
  def update
    respond_to do |format|
      if @pilot_team.update(pilot_team_params)
        format.html { redirect_to @pilot_team, notice: "Pilot team was successfully updated." }
        format.json { render :show, status: :ok, location: @pilot_team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pilot_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pilot_teams/1 or /pilot_teams/1.json
  def destroy
    @pilot_team.destroy
    respond_to do |format|
      format.html { redirect_to pilot_teams_url, notice: "Pilot team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pilot_team
      @pilot_team = PilotTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pilot_team_params
      params.require(:pilot_team).permit(:pilot_id, :team_id, :championship_id)
    end
end
