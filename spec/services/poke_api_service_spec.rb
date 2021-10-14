require 'rails_helper'

RSpec.describe PokeApiService do
  describe '::get_pokemon' do 
    it "connects to PokeApi", :vcr do
      response = PokeApiService.get_pokemon
      all_pokemon = response[:data][:pokemon_v2_pokemon]
      bulbasaur = all_pokemon.first

      expect(all_pokemon.count).to eq(151)
      expect(bulbasaur[:name]).to eq('bulbasaur')
      expect(bulbasaur[:id]).to eq(1)
      expect(bulbasaur[:weight]).to eq(69)
      expect(bulbasaur[:height]).to eq(7)
      expect(bulbasaur[:pokemon_v2_pokemonforms].count).to eq(1)
      expect(bulbasaur[:pokemon_v2_pokemonabilities].count).to eq(2)
      expect(bulbasaur[:pokemon_v2_pokemonmoves].count).to eq(4)
    end
  end
end