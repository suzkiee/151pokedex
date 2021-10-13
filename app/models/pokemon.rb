class Pokemon < ApplicationRecord
  validates_presence_of :name, :height, :weight, :abilities, :forms, :moves, presence: true 
end
