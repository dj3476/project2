require 'rails_helper'

describe Product do
	context "when the product has comments" do
		before do
			@product = Product.create!(name: "football")
			@user = User.create!(email: "djere001@yahoo.com", password: "password")
			@product.comments.create!(rating: 1, user: @user, body: "Awful ball!")
			@product.comments.create!(rating: 3, user: @user, body: "Its just ok")
			@product.comments.create!(rating: 5, user: @user, body: "Exelent")
		end

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq (3)
		end

		it "is not valid" do
			expect(Product.new(description: "Nice ball")).not_to be_valid
		end
	end
end
