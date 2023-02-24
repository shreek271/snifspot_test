module SpotReviews
  class UpdateContract < ApplicationContract
    schema do
      required(:id).filled(:string)
      required(:spot_id).filled(:string)
      required(:description).filled(:string)
    end
  end
end