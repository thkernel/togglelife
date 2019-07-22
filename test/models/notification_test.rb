# == Schema Information
#
# Table name: notifications
#
#  id           :bigint           not null, primary key
#  title        :string
#  content      :string
#  sender_id    :bigint           not null
#  recipient_id :bigint           not null
#  read         :boolean          default(FALSE)
#  read_at      :datetime
#  status       :string
#  identifier   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class NotificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
