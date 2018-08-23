class IcosController < ApplicationController
  before_action :set_ico, only: [:show, :update, :destroy]

  # GET /icos
  def index
    @icos = Ico.all

    render json: @icos
  end

  # GET /icos/1
  def show
    render json: @ico
  end

  # POST /icos
  def create
    @ico = Ico.new(ico_params)

    if @ico.save
      render json: @ico, status: :created, location: @ico
    else
      render json: @ico.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /icos/1
  def update
    if @ico.update(ico_params)
      render json: @ico
    else
      render json: @ico.errors, status: :unprocessable_entity
    end
  end

  # DELETE /icos/1
  def destroy
    @ico.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ico
      @ico = Ico.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ico_params
      params.require(:ico).permit(:name, :description, :image_url, :web_url, :start_time, :end_time, :source, :external_profile_url)
    end
end
