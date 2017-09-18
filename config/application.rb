require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MusicAppNyli1
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # config/application.rb
    RSpotify::authenticate(ENV['spotify_client_id'] , ENV['spotify_client_secret'])

    #puts "module MusicApp class Application values:"
    #puts ENV['spotify_client_id']
    #secret = ENV['spotify_client_secret']
    #puts secret
  end
end
