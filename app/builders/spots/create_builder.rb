module Spots
  class CreateBuilder
    def self.build(attributes)
      SpotPoro.new(attributes)
    end
  end
end