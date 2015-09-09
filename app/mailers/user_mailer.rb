class UserMailer < ApplicationMailer
	def registration_confirmation(user)
		@user = user
    	mail(:to => @user.email, 
    		body: "email_body",
         	content_type: "text/html",
    		:subject => "You have been Invited!")
	end
	
	def contactus_confirmation(contact_email)
    	mail(:to => contact_email, 
    		body: "We will keep in touch as soon as possible",
         	content_type: "text/html",
    		:subject => "Registered your contact request")
	end

    def contactus_confirmation_to_admin(contact_email)
        mail(:to => "insuckcha@gmail.com", 
            body: "You got new contact request from #{contact_email}",
            content_type: "text/html",
            :subject => "Contact request")
    end

end
