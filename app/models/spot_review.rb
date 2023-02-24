# == Schema Information
#
# Table name: spot_reviews
#
#  id          :bigint           not null, primary key
#  spot_id     :bigint
#  description :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class SpotReview < ApplicationRecord
  #constants
  
  #extensions

  #associations  
  belongs_to :spot

  #scopes
  scope :by_recent, -> { order(created_at: :desc) }
  scope :by_oldest, -> { order(created_at: :asc) }

  #nested attributes

  #validations
  validates :description, :length => { maximum: 5000, message: "must be less than 5000 chars." }

  #callbacks
end
