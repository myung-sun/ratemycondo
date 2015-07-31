class Link < ActiveRecord::Base
	acts_as_votable
    belongs_to :user
    has_many :comments

    geocoded_by :address
	after_validation :geocode, :if => :address_changed?

    def self.search(search)
    	where('name ILIKE ? OR address ILIKE ?', "%#{search}%", "%#{search}%")

  	end

end
