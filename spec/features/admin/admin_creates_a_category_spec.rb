require 'rails_helper'

describe 'An admin' do
  context "visits the gif index page" do
    it 'fills out the form to create a new category' do
      admin = create(:user, role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit gifs_path
      fill_in "Category",	with: "cat"
      click_on "Create Category"

      expect(page).to have_content('cat')
    end
  end
  
end