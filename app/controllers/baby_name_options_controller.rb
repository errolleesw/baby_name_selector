class BabyNameOptionsController < ApplicationController
  before_action :set_baby_name_option, only: %i[ show edit update destroy ]

  # GET /baby_name_options or /baby_name_options.json
  def index
    @baby_name_options = BabyNameOption.all
  end

  # GET /baby_name_options/1 or /baby_name_options/1.json
  def show
  end

  # GET /baby_name_options/new
  def new
    @baby_name_option = BabyNameOption.new
  end

  # GET /baby_name_options/1/edit
  def edit
  end

  # POST /baby_name_options or /baby_name_options.json
  def create
    @baby_name_option = BabyNameOption.new(baby_name_option_params)

    respond_to do |format|
      if @baby_name_option.save
        format.html { redirect_to baby_name_option_url(@baby_name_option), notice: "Baby name option was successfully created." }
        format.json { render :show, status: :created, location: @baby_name_option }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baby_name_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baby_name_options/1 or /baby_name_options/1.json
  def update
    respond_to do |format|
      if @baby_name_option.update(baby_name_option_params)
        format.html { redirect_to baby_name_option_url(@baby_name_option), notice: "Baby name option was successfully updated." }
        format.json { render :show, status: :ok, location: @baby_name_option }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baby_name_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baby_name_options/1 or /baby_name_options/1.json
  def destroy
    @baby_name_option.destroy!

    respond_to do |format|
      format.html { redirect_to baby_name_options_url, notice: "Baby name option was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baby_name_option
      @baby_name_option = BabyNameOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baby_name_option_params
      params.require(:baby_name_option).permit(:name, :baby_profile_id)
    end
end
