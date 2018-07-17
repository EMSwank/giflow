require 'rails_helper'

describe "A Visitor" do
  context "visits the root page" do
    it "clicks on login link to login and is take to the login page" do
      visit root_path

      click_on "Log in"

      expect(page).to have_content("Log into your account")
      expect(current_path).to eq(login_path)
    end

  context "visits login page" do
    it 'clicks on new account link and is taken to the new_user path' do
      visit login_path

      click_on "Sign up!"

      expect(current_path).to eq(new_user_path)
      end
  end

  end
end
