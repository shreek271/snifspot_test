module Spots
  class UpdateProcessor < BaseProcessor
    
    def execute
      spot_poro = Spots::CreateBuilder.build(params)
      spot_poro = ::Spots::UpdateRepository.update(spot_poro)
      spot_poro
    end
  end
end