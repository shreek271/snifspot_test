module SpotReviews
  class CreateBuilder
    def self.build(attributes)
      SpotReviewPoro.new(attributes)
    end
  end
end