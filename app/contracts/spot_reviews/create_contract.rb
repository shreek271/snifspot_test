module SpotReviews
  class CreateContract < ApplicationContract
    schema do
      required(:description).filled(:string)
      required(:spot_id).filled(:string)
    end
  end
end