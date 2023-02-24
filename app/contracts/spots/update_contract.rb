module Spots
  class UpdateContract < ApplicationContract
    schema do
      required(:id).filled(:string)
      required(:title).filled(:string)
      required(:description).filled(:string)
      required(:price).filled(:float)
      required(:images).filled(:array)
    end
  end
end