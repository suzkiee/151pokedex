require 'rails_helper'

RSpec.describe "Pokemon Index page" do
  describe 'Pokemon Index Features' do
    before(:each) do
      visit pokedex_path
    end

    it 'lists 151 Pokemon in numerical order' do
    
      expect(page).to have_content("Pokemon - Generation 1")
      expect('bulbasaur').to appear_before('mew')
    end
  end
end 