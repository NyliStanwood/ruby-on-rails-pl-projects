class SpotifyController < ApplicationController
  def search
    title = params[:title]
    if title
      @results =  RSpotify::Artist.search(title)
    end

    # Access tracks' audio features
#sorry = RSpotify::Track.search("Sorry").first
#sorry.audio_features.danceability #=> 0.605
#sorry.audio_features.energy #=> 0.768
#sorry.audio_features.tempo #=> 100.209
  end
end
