class ChangeDataTypeForPokemon < ActiveRecord::Migration[5.2]
  def change
    change_column :pokemons, :abilities, "varchar[] USING (string_to_array(abilities, ','))"
  end
end
