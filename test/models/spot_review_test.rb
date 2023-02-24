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
require "test_helper"

class SpotReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
