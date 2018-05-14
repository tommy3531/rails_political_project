require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module RailsPoliticalProject
  class Application < Rails::Application
    config.load_defaults 5.1
    config.generators do |generate|
	  generate.helper false
	  generate.assets false
	  generate.view_specs false
	  generate.helper_specs false
	  generate.routing_specs false
	  generate.controller_specs false
	end
  end
end
