module Spots
  class CreateContract < ApplicationContract
    schema do
      required(:title).filled(:string)
      required(:description).filled(:string)
      required(:price).filled(:float)
      required(:images).filled(:array)
    end
  end
end