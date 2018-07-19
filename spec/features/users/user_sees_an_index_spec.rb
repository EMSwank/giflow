require 'rails_helper'

describe "A User" do
  context "sees an index page" do
    it "by logging in" do
      user = create(:user)

      visit login_path

      fill_in :email,	with: user.email
      fill_in :password, with: user.password

      click_on "Log in"

      expect(current_path).to eq(user_path(user))
    end

    it 'sees all categories on g' do
      
    end
  end
end
