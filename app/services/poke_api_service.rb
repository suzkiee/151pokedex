class PokeApiService

  def self.get_pokemon
    client = Graphlient::Client.new('https://beta.pokeapi.co/graphql/v1beta',
    headers: {
      'content-type' => 'application/json'
    }
    )

    response = client.query do 
      query do 
        pokemon_v2_pokemon(limit: 151) do 
          name
          id
          weight
          height
          pokemon_v2_pokemonforms do
            form_name
          end
          pokemon_v2_pokemonabilities do
            pokemon_v2_ability do
              name
            end
          end 
          pokemon_v2_pokemonmoves(limit: 4) do
            pokemon_v2_move do 
              name
            end
          end
        end
      end
    end
  end
end