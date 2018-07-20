require 'rails_helper'

describe "A User" do
  context "visits a category page" do
    it "and sees a list of gifs in that category" do
      user = create(:user)
      category = create(:category)
      gif1 = Gif.create(image_path: "https://media.giphy.com/media/CMaRjyLJaKFkQ/giphy.gif", category_id: category.id )

      visit category_path(category)

      expect(page).to have_content(gif1.image_path) 
    end
  end
end
