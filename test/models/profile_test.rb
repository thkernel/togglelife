# == Schema Information
#
# Table name: profiles
#
#  id                 :bigint           not null, primary key
#  first_name         :string
#  last_name          :string
#  gender             :string
#  birth_date         :date
#  full_address       :string
#  street             :string
#  state              :string
#  city               :string
#  country            :string
#  latitude           :float
#  longitude          :float
#  presentation       :text
#  marital_status     :string
#  height             :float
#  weight             :float
#  eyes               :string
#  hair               :string
#  sexual_orientation :string
#  occupation         :string
#  astrology          :string
#  religion           :string
#  purpose            :string
#  user_id            :bigint           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
