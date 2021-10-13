class ChangeMoreDataTypesForPokemon < ActiveRecord::Migration[5.2]
  def change
    change_column :pokemons, :forms, "varchar[] USING (string_to_array(forms, ','))"
    change_column :pokemons, :moves, "varchar[] USING (string_to_array(moves, ','))"
  end
end
