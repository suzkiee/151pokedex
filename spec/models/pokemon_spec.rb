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
end
