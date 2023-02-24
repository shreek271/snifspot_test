class Api::V1::SpotsController < ApplicationController
  
  before_action :set_spot, only: [:show, :update]

  def index
    spots = Spot::FindRepository.list_by_price(params[:direction])
    render json: { data: spots }, status: 200
  end

  def show
    render json: { data: @spot }, status: 200
  end

  def create
    contract = Spots::CreateContract.new
    validation = contract.call(spot_params.to_h)
    return render json: { success: false, data: nil, errors: validation.errors.to_h }, status: 422 if validation.failure?

    spot = Spots::CreateProcessor.call(referral_params)
    
    if spot.persisted
      render json: { success: true, data: spot }, status: 200
    else
      render json: { success: false, data: nil, errors: spot.errors }, status: 422
    end
  end

  def update
    contract = Spots::UpdateContract.new
    validation = contract.call(spot_params.to_h)
    return render json: { success: false, data: nil, errors: validation.errors.to_h }, status: 422 if validation.failure?

    spot = Spots::UpdateProcessor.call(referral_params)
    
    if spot.persisted
      render json: { success: true, data: spot }, status: 200
    else
      render json: { success: false, data: nil, errors: spot.errors }, status: 422
    end
  end

  private

    def spot_params
      params.require(:message).permit(:id, :image, :description, :price, images: [])
    end

    def set_spot
      @spot = Spot::FindRepository.find(params[:id])
    end
end
