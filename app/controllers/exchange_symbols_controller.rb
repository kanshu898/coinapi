class ExchangeSymbolsController < ApplicationController
  before_action :set_exchange_symbol, only: [:show, :update, :destroy]

  # GET /exchange_symbols
  def index
    @exchange_symbols = ExchangeSymbol.all

    render json: @exchange_symbols
  end

  # GET /exchange_symbols/1
  def show
    render json: @exchange_symbol
  end

  # POST /exchange_symbols
  def create
    @exchange_symbol = ExchangeSymbol.new(exchange_symbol_params)

    if @exchange_symbol.save
      render json: @exchange_symbol, status: :created, location: @exchange_symbol
    else
      render json: @exchange_symbol.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exchange_symbols/1
  def update
    if @exchange_symbol.update(exchange_symbol_params)
      render json: @exchange_symbol
    else
      render json: @exchange_symbol.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exchange_symbols/1
  def destroy
    @exchange_symbol.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exchange_symbol
      @exchange_symbol = ExchangeSymbol.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exchange_symbol_params
      params.require(:exchange_symbol).permit(:exchange_id, :symbol_type, :asset_id_base, :asset_id_quote)
    end
end
