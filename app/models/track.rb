class Track < ApplicationRecord
  #validar qie lista nueva no se cree vacia
  validates_presence_of :title, :album, :artist
  #has_and_belong_to_many
end
