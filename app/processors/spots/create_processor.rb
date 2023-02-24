module Spots
  class CreateProcessor < BaseProcessor
    
    def execute
      spot_poro = Spots::CreateBuilder.build(params)
      spot_poro = ::Spots::CreateRepository.update(spot_poro)
      spot_poro
    end
  end
end