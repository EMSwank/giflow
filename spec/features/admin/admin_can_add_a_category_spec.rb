require 'rails_helper'

describe "An Admin" do
  context "visits the new category page" do
    it "adds a new category" do
      admin = create(:user, role: 1)

      visit new_admin_category_path

      expect(page).to have_content("Add Category")

      fill_in :title,	with: "test"
      click_on "Create Category"

      expect(current_path).to eq(categories_path)
    end
  end
end
