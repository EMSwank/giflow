require 'rails_helper'

describe "User visits dashboard page" do
  context "as an admin" do
    it "allows admin to log into the admin dashboard" do
      admin = create(:user, role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_dashboards_path
      expect(page).to have_content("Admin Dashboard")
    end
  end

  context "as a default user" do
    it 'disallows default users to see the admin dashboard' do
      user = create(:user)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit admin_dashboards_path

      expect(page).to_not have_content("Admin Dashboard")
      expect(page).to have_content("The page you were looking for doesn't exist.") 
    end
  end
  
end
