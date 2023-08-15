class AddDescriptionAndDietToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :diet, :string
    add_column :recipes, :description, :text
  end
end
