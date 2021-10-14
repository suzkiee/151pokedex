class PokemonController < ApplicationController
  def index
    if params[:alphabetical] == "true"
      @pokemon = Pokemon.alphabetical
    else
      @pokemon = Pokemon.all
    end
  end
end