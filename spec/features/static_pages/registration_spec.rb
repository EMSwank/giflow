require 'rails_helper'

describe "registration workflow" do
  context "signs up for user account" do
    it "submits registration for successfully" do
      name = "name"
      email = "email@email.xyz"
      password = "password"

      visit new_user_path

      fill_in :user_name,	with: name
      fill_in :user_email,	with: email
      fill_in :user_password,	with: password

      click_on 'Create User'

      expect(current_path).to eq(user_path(User.last))
      expect(page).to have_content("Welcome, #{name}") 
    end

    it 'submits registration with duplicate email' do
      email = "email@email.xyz"
      User.create(name: "asdf", email: email, password: "password")

      visit new_user_path

      fill_in :user_name,	with: "Bob"
      fill_in :user_email,	with: email
      fill_in :user_password,	with: "12345"

      click_on 'Create User'

      expect(current_path).to eq(users_path)
      expect(page).to have_content("Sign Up") 
    end
  end
end
