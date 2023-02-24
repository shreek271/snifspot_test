module SpotReviews
  class CreateProcessor < BaseProcessor
    
    def execute
      spot_review_poro = SpotReviews::CreateBuilder.build(params)
      spot_review_poro = ::SpotReviews::CreateRepository.update(spot_review_poro)
      spot_review_poro
    end
  end
end