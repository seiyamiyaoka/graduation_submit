class AddIngredientsAndCaloriesToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :ingredients, :text
    add_column :blogs, :calories, :integer
  end
end
