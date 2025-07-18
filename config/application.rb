require_relative "boot"

# require "rails/all"

# Instead, require only the frameworks you need:
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
# require "active_job/railtie" # If you use Active Job
# require "active_record/railtie" # REMOVE OR COMMENT OUT THIS LINE
# require "active_storage/engine" # If you use Active Storage
# require "action_cable/engine" # If you use Action Cable
# require "rails/test_unit/railtie" # If you use Minitest
# require "sprockets/railtie" # If you use the Asset Pipeline
# require "action_text/engine" # If you use Action Text

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Shambaugh
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
