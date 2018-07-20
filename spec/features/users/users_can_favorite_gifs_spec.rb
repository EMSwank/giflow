require 'rails_helper'

describe "A User" do
  context "visits the category show page" do
    it "and can favorite an image" do
      user = create(:user)
      category = create(:category)
      gif = Gif.create(image_path: "https://media.giphy.com/media/CMaRjyLJaKFkQ/giphy.gif", category_id: category.id )
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      
      visit category_path(category)

      click_on "Add to Favorites"

      expect(current_path).to eq(user_path(user))
      expect(page).to have_xpath("//img[@src='https://media.giphy.com/media/CMaRjyLJaKFkQ/giphy.gif']")
    end
  end
end
