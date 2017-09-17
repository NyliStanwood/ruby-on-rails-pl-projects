class Track < ApplicationRecord
  #validar qie lista nueva no se cree vacia
  validates_presence_of :title, :album, :artist
end
