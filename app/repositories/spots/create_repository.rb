module Spots
  class CreateRepository
    
    def self.create(poro)
      spot = Spot.new(poro.attributes)
      spot.save

      if spot.errors.present?
        poro.errors << spot.errors
        poro.persisted = false
      else
        poro.persisted = true
      end

      poro
    end

  end
end