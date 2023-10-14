class BabyProfilesController < ApplicationController
  before_action :set_baby_profile, only: %i[ show edit update destroy ]

  # GET /baby_profiles or /baby_profiles.json
  def index
    @baby_profiles = BabyProfile.all
  end

  # GET /baby_profiles/1 or /baby_profiles/1.json
  def show
  end

  # GET /baby_profiles/new
  def new
    @baby_profile = BabyProfile.new
  end

  # GET /baby_profiles/1/edit
  def edit
  end

  # POST /baby_profiles or /baby_profiles.json
  def create
    @baby_profile = BabyProfile.new(baby_profile_params)

    respond_to do |format|
      if @baby_profile.save
        format.html { redirect_to baby_profile_url(@baby_profile), notice: "Baby profile was successfully created." }
        format.json { render :show, status: :created, location: @baby_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baby_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baby_profiles/1 or /baby_profiles/1.json
  def update
    respond_to do |format|
      if @baby_profile.update(baby_profile_params)
        format.html { redirect_to baby_profile_url(@baby_profile), notice: "Baby profile was successfully updated." }
        format.json { render :show, status: :ok, location: @baby_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baby_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baby_profiles/1 or /baby_profiles/1.json
  def destroy
    @baby_profile.destroy!

    respond_to do |format|
      format.html { redirect_to baby_profiles_url, notice: "Baby profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baby_profile
      @baby_profile = BabyProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baby_profile_params
      params.require(:baby_profile).permit(:gender, :mothers_name, :fathers_name, :expected_date, :description)
    end
end
