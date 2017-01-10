require 'rails_helper'

describe UsersController, :type => :controller do
  before do
    #@user = User.create!(email: "djere001@gmail.com", password: "dj123456")
    @user = FactoryGirl.create(:user)
    #@user2 = User.create!(email: "djere001@yahoo.com", password: "dj123456")
    
  end

  describe 'GET #show' do
    context "User is logged in" do
      before do
        sign_in @user
      end
      it "loads correct user details" do
        get :show, id: @user.id
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end
    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to redirect_to(new_user_session_path)
      end
    end

   #context "First user can't access second user show page" do
     #before do
        #sign_in @user
      #end
      #it "redirects to root path" do
        #get :show, id: @user2.id
        #expect(response).to redirect_to(root_path)
      #end
    #end
  end
end
