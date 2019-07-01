class RecipesController < ApplicationController
  def index
    @search_term = 'french'
    @recipes = Recipe.for(@search_term)
  end
end
