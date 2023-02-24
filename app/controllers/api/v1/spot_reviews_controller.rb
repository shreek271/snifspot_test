class Api::V1::SpotReviewsController < ApplicationController

  before_action :set_spot_review, only: [:show]

  def index
    return render json: { success: false, data: [], errors: ["spot_id missing"] }, status: 422 if params[:spot_id].blank?

    spot_reviews = SpotReview::ListRepository.list_by_price(params[:spot_id], params[:direction])
    render json: { data: spot_reviews }, status: 200
  end

  def show
    render json: { data: @spot_review }, status: 200
  end

  def create
    contract = SpotReviews::CreateContract.new
    validation = contract.call(spot_review_params.to_h)
    return render json: { success: false, data: nil, errors: validation.errors.to_h }, status: 422 if validation.failure?

    spot_review = SpotReviews::CreateProcessor.call(spot_review_params)
    
    if spot_review.persisted
      render json: { success: true, data: spot_review }, status: 200
    else
      render json: { success: false, data: nil, errors: spot_review.errors }, status: 422
    end
  end

  def update
    contract = SpotReviews::UpdateContract.new
    validation = contract.call(spot_review_params.to_h)
    return render json: { success: false, data: nil, errors: validation.errors.to_h }, status: 422 if validation.failure?

    spot_review = SpotReviews::UpdateProcessor.call(spot_review_params)
    
    if spot_review.persisted
      render json: { success: true, data: spot_review }, status: 200
    else
      render json: { success: false, data: nil, errors: spot_review.errors }, status: 422
    end
  end

  private

    def spot_review_params
      params.require(:message).permit(:id, :spot_id, :description)
    end

    def set_spot_review
      @spot_review = SpotReview::FindRepository.find(params[:id])
    end
end
