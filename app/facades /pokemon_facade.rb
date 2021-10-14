class PokemonFacade
  def self.create_pokemon
    response = PokeApiService.get_pokemon

    response[:data][:pokemon_v2_pokemon].each do |poke|
      poke_hash =  {
                    name: poke[:name],
                    height: poke[:height],
                    weight: poke[:weight],
                    forms: poke[:pokemon_v2_pokemonforms].map { |form| form[:form_name] },
                    abilities: poke[:pokemon_v2_pokemonabilities].map { |ability| ability[:pokemon_v2_ability][:name] },
                    moves: poke[:pokemon_v2_pokemonmoves].map { |move| move[:pokemon_v2_move][:name] },
                   }
      Pokemon.create(poke_hash)
    end
  end
end