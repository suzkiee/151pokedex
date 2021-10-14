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

    context 'user can clicks order alphabetically button' do 
      it 'lists 151 Pokemon in alphabetical order' do 
        expect('bulbasaur').to appear_before('abra')
        expect('zubat').to appear_before('mew')
        
        click_link "Sort Alphabetically"
       
        expect('abra').to appear_before('bulbasaur')
        expect('mew').to appear_before('zubat')
      end
    end
  end
end 