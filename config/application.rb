require File.expand_path('../boot', __FILE__)

# require "active_record/railtie"
require 'rails/all'
#require "action_controller/railtie"
#require "action_mailer/railtie"
#require "active_resource/railtie"
#require "sprockets/railtie"
#require "rails/test_unit/railtie"

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module ViewsReports
  class Application < Rails::Application
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named.
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running.
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    
    config.i18n.default_locale = :en

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'
    
    
    
    
    #
    # ish-lib
    # 20120724
    # 20120727
    # if git submodule, then read-only
    #
    ISHLIB = 'ish-lib'
    
    config.i18n.load_path += Dir[Rails.root.join('lib', ISHLIB, 'locales', '*.{rb,yml}').to_s]
    
    config.autoload_paths += %W(
      #{config.root}/lib/#{ISHLIB}/controllers
      #{config.root}/lib/#{ISHLIB}/helpers
    )
    config.assets.paths << Rails.root.join("lib", ISHLIB, 'assets', 'flash' )
    config.assets.paths << Rails.root.join("lib", ISHLIB, 'assets', 'images' )
    config.assets.paths << Rails.root.join("lib", ISHLIB, 'assets', 'javascripts' )
    config.assets.paths << Rails.root.join("lib", ISHLIB, 'assets', 'stylesheets' )
    config.assets.paths << Rails.root.join("lib", ISHLIB, 'data' )
     
  end
end
