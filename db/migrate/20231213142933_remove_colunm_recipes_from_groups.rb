class RemoveColunmRecipesFromGroups < ActiveRecord::Migration[7.0]
  def change
    remove_column :groups, :recipe_id
  end
end
