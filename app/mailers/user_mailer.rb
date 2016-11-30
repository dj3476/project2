class UserMailer < ApplicationMailer
	default from: "your-email@example.com"

  	def contact_form(email, name, message)
	  	@message = message
    	mail(:from => email,
        :to => 'djere001@gmail.com',
        :subject => "A new contact form message from #{name}")
	end
end
