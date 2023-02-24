class SpotPoro < BasePoro
  attr_accessor :id, :title, :description, :price, :images

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @description = attributes[:description]
    @price = attributes[:price]
    @images = attributes[:images]

    @persisted = false
    @errors = []
  end

  def attributes
    attrs = {
      id: id,
      title: title,
      description: description,
      price: price,
      images: images
    }
  end
end
