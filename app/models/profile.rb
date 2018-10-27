class Profile < ApplicationRecord
	belongs_to :user
	before_save :explode_address


	# Geocoder requirements.
	geocoded_by :full_address
	after_validation :geocode, :if => :full_address_changed?
	

	#def full_address
		#[street, city, state, country].compact.join(', ')
	#end

	# For reverse geocoding
	#reverse_geocoded_by :latitude, :longitude #, :address => :full_address
	#after_validation :reverse_geocode
	
    # Paperclip usage
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "200x200>" }, default_url: "/images/avatar/:style/missing.png",  validate_media_type: false
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

    validates_attachment :avatar,  :file_dimensions
    




	
    # For paper clip image dimensions validation
	def file_dimensions
		dimensions = Paperclip::Geometry.from_file(file.queued_for_write[:original].path)
		self.width = dimensions.width
		self.height = dimensions.height

		if dimensions.width < 200 && dimensions.height < 200
			errors.add(:file,'Width or height must be at least 50px')
		end
	end
	

	

	def explode_address

		address = self.full_address.split(',') 
		if self.full_address.present?
			if address.length >= 2
				self.city ||= address[0]
				self.country ||= address[1]
			end
		end
	end
	
end
