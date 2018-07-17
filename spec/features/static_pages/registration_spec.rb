require 'rails_helper'

describe "registration workflow" do
  context "signs up for user account" do
    it "submits registration for successfully" do
      visit new_user_path

      fill_in :user_name,	with: "name"
      fill_in :user_email,	with: "email@email.com"
      fill_in :user_password,	with: "password"

      click_on 'Create User'
      expect(path).to eq(users_path)
    end
  end
end
