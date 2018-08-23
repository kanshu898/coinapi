class CoinsController < ApplicationController
  before_action :set_coin, only: [:show, :update, :destroy]

  # GET /coins
  def index
    @coins = Coin.all

    render json: @coins
  end

  # GET /coins/1
  def show
    render json: @coin
  end

  # POST /coins
  def create
    @coin = Coin.new(coin_params)

    if @coin.save
      render json: @coin, status: :created, location: @coin
    else
      render json: @coin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coins/1
  def update
    if @coin.update(coin_params)
      render json: @coin
    else
      render json: @coin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coins/1
  def destroy
    @coin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coin
      @coin = Coin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coin_params
      params.require(:coin).permit(:symbol, :name, :contact_name_primary, :contact_email_primary, :contact_name_secondary, :contact_email_secondary, :website_url, :youtube_url, :whitepaper_url, :github_url, :github_stars_count, :github_commit_count, :reddit_url, :reddit_count, :telegram_handle, :telegram_count, :twitter_handle, :twitter_count, :facebook_url, :facebook_count, :blockchain_type, :proof_type, :algorithm, :supply_circulating, :supply_total, :market_cap, :high_all_time, :low_all_time, :return_from_ico, :description, :location, :category)
    end
end
