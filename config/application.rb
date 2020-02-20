require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Eslite
  class Application < Rails::Application
    config.load_defaults 6.0
    config.time_zone = 'Taipei'
    config.i18n.default_locale = "zh-TW"
    config.active_storage.variant_processor = :vips
  end
end
