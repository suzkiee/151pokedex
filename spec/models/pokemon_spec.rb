require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  describe "Validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:height)}
    it {should validate_presence_of(:weight)}
    it {should validate_presence_of(:abilities)}
    it {should validate_presence_of(:forms)}
    it {should validate_presence_of(:moves)}
  end

  context 'class methods' do 
    describe '::alphabetical' do 
      it 'orders Pokemon alphabetically' do
        
        expect(Pokemon.alphabetical.count).to eq(151)
        expect(Pokemon.alphabetical.first.name).to eq('abra')
        expect(Pokemon.alphabetical.last.name).to eq('zubat')
      end
    end
  end
end
