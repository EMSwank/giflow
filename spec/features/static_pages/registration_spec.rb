require 'rails_helper'

describe "registration workflow" do
  context "signs up for user account" do
    it "submits registration for successfully" do
      visit new_user_path
      save_and_open_page

      fill_in :name,	with: "name"
      fill_in :email,	with: "email@email.com"
      fill_in :password,	with: "password"

      click_on :submit
      expect(path).to eq(users_path)
    end
  end
end
