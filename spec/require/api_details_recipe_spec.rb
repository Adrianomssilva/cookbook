require 'rails_helper'

describe "API Recipe" do
  context "show" do
    it "com sucesso" do
      recipe_type = RecipeType.create!(name: "Prato Principal")
      recipe = Recipe.create!(title: 'Hamburguer', cook_time: 10,
                    recipe_type: recipe_type,
                    ingredients: 'hamburguer, pão de hamburguer, queijo',
                    instructions: 'Frite o hamburguer, coloque no pão, coma')

      get api_v1_recipe_path

      expect(response).to have_http_status(200)
    end
  end

end
