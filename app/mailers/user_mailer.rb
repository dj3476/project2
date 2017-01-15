class UserMailer < ApplicationMailer
	default from: "your-email@example.com"

  	def contact_form(email, name, message)
	  	@message = message
    	mail(:from => email,
        :to => 'djere001@gmail.com',
        :subject => "A new contact form message from #{name}!")
	end

	def welcome(user)
	  @appname = "Burts Shop"
	  mail( :to => user.email,
	        :subject => "Welcome to #{@appname}!")
	end

	def paid_order(user, product)
		@user = user
		@product = product
		@appname = "Burts Shop"
		mail( :to => user.email, 
			  :subject => "Your order on #{@appname}!")
	end

end