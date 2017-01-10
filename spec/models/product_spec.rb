require 'rails_helper'

describe Product do
	context "when the product has comments" do
		before do
			#@product = Product.create!(name: "football")
			@product = FactoryGirl.create(:product)
			#@user = User.create!(email: "djere001@yahoo.com", password: "password")
			@user = FactoryGirl.create(:user)
			#@product.comments.create!(rating: 1, user: @user, body: "Awful ball!")
			#@product.comments.create!(rating: 3, user: @user, body: "Its just ok")
			#@product.comments.create!(rating: 5, user: @user, body: "Exelent")
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
