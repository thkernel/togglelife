# == Schema Information
#
# Table name: flirts
#
#  id           :bigint           not null, primary key
#  sender_id    :bigint           not null
#  recipient_id :bigint           not null
#  status       :string           default("pending")
#  accepted_at  :datetime
#  removed_at   :datetime
#  identifier   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class FlirtTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
