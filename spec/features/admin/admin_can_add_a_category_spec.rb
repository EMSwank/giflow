require 'rails_helper'

describe "An Admin" do
  context "visits the new category page" do
    xit "adds a new category" do
      admin = create(:user, role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_admin_category_path

      expect(page).to have_content("Add Category")

      fill_in "Add Category",	with: "test"
      click_on "Create Category"
save_and_open_page
      expect(current_path).to eq(admin_categories_path)
      expect(page).to have_content("test") 
    end
  end
end
