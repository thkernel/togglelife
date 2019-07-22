# == Schema Information
#
# Table name: blockings
#
#  id           :bigint           not null, primary key
#  reason       :string
#  sender_id    :bigint           not null
#  recipient_id :bigint           not null
#  status       :string           default("pending")
#  identifier   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class BlockingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
