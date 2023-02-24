module SpotReviews
  class UpdateRepository
    
    def self.update(poro)
      spot = ::SpotReviews::FindRepository.find(poro.id)
      spot_review.update(poro.attributes)

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