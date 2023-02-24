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
require "test_helper"

class SpotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
