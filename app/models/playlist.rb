class Playlist < ApplicationRecord
  #especificar que los valores de la tabla no sean null
  validates_presence_of :name, :number_of_votes
end
