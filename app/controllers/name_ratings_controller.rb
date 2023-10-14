class NameRatingsController < ApplicationController
  before_action :set_name_rating, only: %i[ show edit update destroy ]

  # GET /name_ratings or /name_ratings.json
  def index
    @name_ratings = NameRating.all
  end

  # GET /name_ratings/1 or /name_ratings/1.json
  def show
  end

  # GET /name_ratings/new
  def new
    @name_rating = NameRating.new
  end

  # GET /name_ratings/1/edit
  def edit
  end

  # POST /name_ratings or /name_ratings.json
  def create
    @name_rating = NameRating.new(name_rating_params)

    respond_to do |format|
      if @name_rating.save
        format.html { redirect_to name_rating_url(@name_rating), notice: "Name rating was successfully created." }
        format.json { render :show, status: :created, location: @name_rating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @name_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /name_ratings/1 or /name_ratings/1.json
  def update
    respond_to do |format|
      if @name_rating.update(name_rating_params)
        format.html { redirect_to name_rating_url(@name_rating), notice: "Name rating was successfully updated." }
        format.json { render :show, status: :ok, location: @name_rating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @name_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /name_ratings/1 or /name_ratings/1.json
  def destroy
    @name_rating.destroy!

    respond_to do |format|
      format.html { redirect_to name_ratings_url, notice: "Name rating was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_name_rating
      @name_rating = NameRating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def name_rating_params
      params.require(:name_rating).permit(:baby_name_option_id, :factor, :rating)
    end
end
