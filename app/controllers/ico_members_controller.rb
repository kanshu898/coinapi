class IcoMembersController < ApplicationController
  before_action :set_ico_member, only: [:show, :update, :destroy]

  # GET /ico_members
  def index
    @ico_members = IcoMember.all

    render json: @ico_members
  end

  # GET /ico_members/1
  def show
    render json: @ico_member
  end

  # POST /ico_members
  def create
    @ico_member = IcoMember.new(ico_member_params)

    if @ico_member.save
      render json: @ico_member, status: :created, location: @ico_member
    else
      render json: @ico_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ico_members/1
  def update
    if @ico_member.update(ico_member_params)
      render json: @ico_member
    else
      render json: @ico_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ico_members/1
  def destroy
    @ico_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ico_member
      @ico_member = IcoMember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ico_member_params
      params.require(:ico_member).permit(:coin_symbol, :name, :designation, :image_url, :social_linkedin)
    end
end
