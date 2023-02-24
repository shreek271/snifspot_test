module SpotReviews
  class UpdateProcessor < BaseProcessor
    
    def execute
      spot_review_poro = SpotReviews::CreateBuilder.build(params)
      spot_review_poro = ::SpotReviews::UpdateRepository.update(spot_review_poro)
      spot_review_poro
    end
  end
end