require 'rails_helper'

describe UsersController, :type => :controller do
  before do
    @user = User.create!(email: "djere001@yahoo.com", password: "dj123456")
  end

  describe 'GET #show' do
    context "User is logged in" do
      before do
        sign_in @user
      end
    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to redirect_to(:user)
      end
    end
  end
end
