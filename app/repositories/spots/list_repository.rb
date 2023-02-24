module Spot
  class ListRepository
    def self.list_by_price(direction = "asc")
      if direction == "asc"
        Spot.all.order(price: :asc)
      else
        Spot.all.order(price: :desc)
      end
    end
  end
end