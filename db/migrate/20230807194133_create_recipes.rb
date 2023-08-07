class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :preparation_time
      t.integer :cooking_time
      t.integer :difficulty
      t.integer :number_of_people
      t.integer :min_number_of_people
      t.references :created_by, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
