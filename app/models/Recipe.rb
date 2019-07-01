class Recipe
  include HTTParty

  base_uri "https://www.food2fork.com/api/search"
  default_params key: "398ef890461653922bd099e7d36818fb"
  format :json

  def self.for term
    get("", query: { query: term})["recipes"]
  end
end
