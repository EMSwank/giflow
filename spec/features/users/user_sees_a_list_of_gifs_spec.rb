require 'rails_helper'

describe "A User" do
  context "visits a category page" do
    it "and sees a list of gifs in that category" do
      user = create(:user)
      category = create(:category)
      gif = Gif.create(image_path: "https://media.giphy.com/media/CMaRjyLJaKFkQ/giphy.gif", category_id: category.id )
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
   
      visit category_path(category.id)

      expect(page).to have_xpath("//img[@src='https://media.giphy.com/media/CMaRjyLJaKFkQ/giphy.gif']")
    end
  end
end
