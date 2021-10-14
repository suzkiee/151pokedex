class Pokemon < ApplicationRecord
  validates_presence_of :name, :height, :weight, :abilities, :forms, :moves, presence: true 

  def self.alphabetical
    order(:name)
  end
end
