class Link < ActiveRecord::Base
	acts_as_votable
    belongs_to :user
    has_many :comments


    def self.search(search)
    	where('name ILIKE ? OR address ILIKE ?', "%#{search}%", "%#{search}%")

  	end

end
