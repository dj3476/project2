class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end

  def landing_page
  	@featured_product = Product.first
  	@products = Product.limit(4)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver.now
  end

end
