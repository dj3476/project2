require 'rails_helper'

describe Product do
	context "when the product has comments" do
		before do
			@product = FactoryGirl.create(:product)
			@user = FactoryGirl.create(:user)
			@product.comments.push(FactoryGirl.create(:comment))				
		end

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq (3)
		end
	end

	context "when the product has no name" do
		before do
			@product = Product.create(:description => "This is a family car.")
		end

		it "should return an invalid product entry" do 
			expect(@product).not_to be_valid
		end
	end
end
