require 'rails_helper'

describe "A Visitor" do
  context "visits the root page" do
    it "clicks on login link to login and is take to the login page" do
      visit root_path

      click_on "Log in"

      expect(current_path).to eq(login_path) 
    end

    it 'does something' do
      
    end
  end
end
