# == Schema Information
#
# Table name: profiles
#
#  id                  :bigint(8)        not null, primary key
#  first_name          :string           not null
#  last_name           :string           not null
#  gender              :string           not null
#  birth_date          :date
#  full_address        :string           not null
#  street              :string
#  state               :string
#  city                :string
#  country             :string           not null
#  latitude            :float
#  longitude           :float
#  presentation        :text
#  marital_status      :string
#  height              :string
#  weight              :string
#  eyes                :string
#  hair                :string
#  sexual_orientation  :string
#  occupation          :string
#  astrology           :string
#  region              :string
#  nationality         :string
#  purpose             :string
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :bigint(8)
#  avatar_updated_at   :datetime
#  user_id             :bigint(8)        not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
