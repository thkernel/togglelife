# == Schema Information
#
# Table name: permissions
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  status      :string
#  identifier  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Permission < ApplicationRecord
    # Include shared utils.
   include SharedUtils::Model
   
   before_save :generate_random_id 
   
   #validates :identifier, presence: true, uniqueness: true

   
end
