require_relative 'boot'

require 'rails/all'
require './lib/shared_utils/utils'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Flirtera
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :fr

    config.assets.paths << Rails.root.join("app", "assets", "fonts")

  end
end
