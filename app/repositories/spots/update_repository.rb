module Spots
  class UpdateRepository
    
    def self.update(poro)
      spot = ::Spots::FindRepository.find(poro.id)
      spot.update(poro.attributes)

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