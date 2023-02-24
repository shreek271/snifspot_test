class SpotReviewPoro < BasePoro
  attr_accessor :id, :spot_id, :description

  def initialize(attributes = {})
    @id = attributes[:id]
    @spot_id = attributes[:spot_id]
    @description = attributes[:description]

    @persisted = false
    @errors = []
  end

  def attributes
    attrs = {
      id: id,
      spot_id: spot_id,
      description: description,
    }
  end
end
