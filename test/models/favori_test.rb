# == Schema Information
#
# Table name: favoris
#
#  id           :bigint           not null, primary key
#  sender_id    :bigint           not null
#  recipient_id :bigint           not null
#  status       :string           default("enable")
#  removed_at   :datetime
#  identifier   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class FavoriTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
