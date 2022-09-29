require 'recipe_repository'

RSpec.describe RecipeRepository do
    
    it "returns all recipes" do
        repo = RecipeRepository.new

        recipes = repo.all

        expect(recipes.length).to eq(2)

        expect(recipes[0].id).to eq('1')
        expect(recipes[0].name).to eq('Risotto') 
        expect(recipes[0].cooking_time).to eq('60') 
        expect(recipes[0].rating).to eq('5')

        expect(recipes[1].id).to eq('2') 
        expect(recipes[1].name).to eq('Potato Hash') 
        expect(recipes[1].cooking_time).to eq('50')
        expect(recipes[0].rating).to eq('5')
    end

# 2
# Get a single student
    it "returns a single recipe, Risotto" do
        repo = RecipeRepository.new

        recipes = repo.find(1)

        expect(recipes.id).to eq('1')
        expect(recipes.name).to eq('Risotto') 
        expect(recipes.cooking_time).to eq('60') 
        expect(recipes.rating).to eq('5')
    end

    it "returns a single recipe, Potato Hash" do
        repo = RecipeRepository.new

        recipes = repo.find(2)

        expect(recipes.id).to eq('2') 
        expect(recipes.name).to eq('Potato Hash') 
        expect(recipes.cooking_time).to eq('50')
        expect(recipes.rating).to eq('5')
    end
end