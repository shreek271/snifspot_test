# == Schema Information
#
# Table name: spots
#
#  id          :bigint           not null, primary key
#  title       :string(255)      not null
#  description :text(65535)      not null
#  price       :float(24)        default(0.0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Spot < ApplicationRecord
  #constants
  
  #extensions

  #associations  
  has_many :spot_reviews
  has_many_attached :images

  #scopes
  scope :by_recent, -> { order(created_at: :desc) }
  scope :by_oldest, -> { order(created_at: :asc) }

  #nested attributes

  #validations
  validates :title, presence: true, :length => { maximum: 200, message: "must be less than 200 chars." }
  validates :description, :length => { maximum: 5000, message: "must be less than 5000 chars." }
  validates :price, presence: true

  #callbacks
end
