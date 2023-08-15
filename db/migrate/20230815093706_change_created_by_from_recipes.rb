class ChangeCreatedByFromRecipes < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :created_by_id, :user
  end
end
