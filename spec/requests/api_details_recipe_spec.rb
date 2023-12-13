require 'rails_helper'

describe "API Recipe" do
  context "show" do
    it "com sucesso" do
      user = create(:user, email: 'user@email.com', password: '123456', role: :user)
      recipe_type = RecipeType.create!(name: "Prato Principal")
      recipe = Recipe.create!(title: 'Hamburguer', cook_time: 10,
                    recipe_type: recipe_type,
                    ingredients: 'hamburguer, pão de hamburguer, queijo',
                    instructions: 'Frite o hamburguer, coloque no pão, coma', user: user)

      get "/api/v1/recipes/#{recipe.id}"

      expect(response).to have_http_status(200)
    end
  end

end
