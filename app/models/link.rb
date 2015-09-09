class Link < ActiveRecord::Base
	acts_as_votable
    belongs_to :user
    has_many :comments

    validates :name, :presence => true
    validates :streetaddress, :presence => true

    # add rating capability using ratyrate
    ratyrate_rateable 'cleanliness', 'noise_level', 'convenience', 'custome_design'

    def full_address
        [streetaddress, regionaladdress].compact.join(', ')
    end

    geocoded_by :full_address
    after_validation :geocode, :if => :streetaddress_changed?
end
