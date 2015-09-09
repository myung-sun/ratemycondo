class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :link
  validates :body, :presence => true

  # add rating capability to comments using ratyrate
  ratyrate_rateable 'cleanliness', 'noise_level', 'convenience'

end
