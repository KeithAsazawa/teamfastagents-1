require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module Teamfastagents
  class Application < Rails::Application

    config.action_mailer.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => "teamfastagents.mygbiz.com",
      :user_name            => "teamfastagents@teamfastagents.mygbiz.com",
      :password             => "VAhelp123",
      :authentication       => :plain,
      :enable_starttls_auto => true
    }
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default_url_options = {
      :host => "teamfastagents.mygbiz.com"
    }

    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    config.active_record.whitelist_attributes = true

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    config.assets.initialize_on_precompile = false
  end
end
