class RemoveGifFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_reference :categories, :gif, foreign_key: true
  end
end
