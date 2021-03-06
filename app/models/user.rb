class User < ActiveRecord::Base
  rolify
  has_many :links
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]#,:omniauth_providers => [:facebook]

	# def self.from_omniauth(auth)
	#   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	#     user.email = auth.info.email
	#     user.password = Devise.friendly_token[0,20]
	#     # user.name = auth.info.name   # assuming the user model has a name
	#     # user.image = auth.info.image # assuming the user model has an image
	#   end
	# end

	# Check if user has a role as :admin
	def is_admin?
		has_role? :admin
	end

	def self.from_omniauth(access_token)
		data = access_token.info
		user = User.where(:email => data["email"]).first

		#Uncomment the section below if you want users to be created if they don't exist
		unless user
		    user = User.create(
		       email: data["email"],
		       password: Devise.friendly_token[0,20]
		    )
		end
		user
	end

	# def self.new_with_session(params, session)
	#     super.tap do |user|
	#       if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
	#         user.email = data["email"] if user.email.blank?
	#       end
	#     end
 #  	end

  	# defining the model that will do the actual rating
  	ratyrate_rater
end
