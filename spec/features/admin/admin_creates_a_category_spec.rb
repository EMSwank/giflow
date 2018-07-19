require 'rails_helper'

describe 'An admin' do
  context "visits the gif index page" do
    it 'fills out the form to create a new category' do
      admin = create(:user, role: 1)
      category = "dog"
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit gifs_path
      click_on "Create a Category"
save_and_open_page
      expect(current_path).to eq(new_admin_category_path) 
      expect(page).to have_content(category)
    end
  end
  
end