require 'rails_helper'

describe UsersController, :type => :controller do
  before do
    #@user = User.create!(email: "djere001@gmail.com", password: "dj123456")
    @user = FactoryGirl.create(:user)
    #@userTwo = FactoryGirl.create(:user)
    
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
      #it "can't access user2 details redirects to root path" do
        #get :show, id: @userTwo.id
        #expect(assigns(:user)).not_to eq @user2
        #expect(response).to redirect_to(root_path)
        #expect(response).to have_http_status(302)
      #end
    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
