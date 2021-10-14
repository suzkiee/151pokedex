require 'rails_helper'

RSpec.describe PokemonFacade do
  describe '::create_pokemon' do
    before(:each) do
      Pokemon.destroy_all 
    end

    it 'creates Pokemon from PokeAPI service call when you seed database', :vcr do
      PokemonFacade.create_pokemon 

      expect(Pokemon.count).to eq(151)
      expect(Pokemon.first).to be_a(Pokemon)
      expect(Pokemon.first.name).to eq("bulbasaur")
      expect(Pokemon.first.height).to eq(7)
      expect(Pokemon.first.weight).to eq(69)

      expect(Pokemon.first.abilities).to be_a(Array)
      expect(Pokemon.first.forms).to be_a(Array)
      expect(Pokemon.first.moves).to be_a(Array)

      expect(Pokemon.first.abilities.count).to eq(2)
      expect(Pokemon.first.forms.count).to eq(1)
      expect(Pokemon.first.moves.count).to eq(4)
    end
  end
end