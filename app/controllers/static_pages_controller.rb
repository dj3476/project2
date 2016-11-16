class StaticPagesController < ApplicationController
  def about
  	redirect_to :back
  end

  def contact
  end

  def landing_page
  	@featured_product = Product.first
  	@products = Product.limit(4)
  end

end
