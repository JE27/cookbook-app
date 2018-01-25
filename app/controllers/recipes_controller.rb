class RecipesController < ApplicationController
  
  def index
    recipes = Recipe.all
    
    search_term = params[:search]

    if search_term
      recipes = recipes.where("title iLIKE ? OR ingredients iLIKE ?",
                                 "%#{search_term}%", 
                                 "%#{search_term}%")
    end

    render json: recipes.as_json
  
  end

  def create
    recipes = Recipe.new(
                        title: params[:title],
                        chef: params[:chef],
                        ingredients: params[:ingredients],
                        directions: params[:directions]
                        )
    recipes.save
    render json: recipe.as_json
  end

  def show
    recipes = Recipe.find(params[:id])
    render json: recipes.as_json
  end

  def update
    recipe = Recipe.find(params[:id]) #find object

    recipe.title = params[:title]   #overrding and changing all attributes 
    recipe.chef = params[:chef]
    recipe.ingredients = params[:ingredients]
    recipe.directions = params[:directions]
    recipe.save #save udpates

    render json: recipe.as_json #make everything show up as json
  end

  def destroy
    recipes = Recipe.find(params[:id])
    recipe.destroy
    render json: {message: "Successfully destroyed Recipe ##{recipe.id}."}
  end

end
