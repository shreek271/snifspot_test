module SpotReviews
  class CreateRepository
    
    def self.create(poro)
      spot_review = SpotReview.new(poro.attributes)
      spot_review.save

      if spot_review.errors.present?
        poro.errors << spot_review.errors
        poro.persisted = false
      else
        poro.persisted = true
      end

      poro
    end

  end
end