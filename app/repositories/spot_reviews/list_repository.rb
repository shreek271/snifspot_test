module SpotReview
  class ListRepository
    def self.list_by_price(direction = "asc")
      if direction == "asc"
        SpotReview.where(spot_id: spot_id).order(created_at: :asc)
      else
        SpotReview.where(spot_id: spot_id).order(created_at: :desc)
      end
    end
  end
end