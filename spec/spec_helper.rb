ENV['RAILS_ENV'] = 'test'
require 'minitest/autorun'
require_relative '../config/environment.rb'

if defined?(ActionController::TestCase)
  module ControllerTestHelper
    extend ActiveSupport::Concern

    included do
      setup :setup_routes
    end

    private

    def setup_routes
      @routes = Rails.application.routes
    end
  end

  class ActionController::TestCase
    include ControllerTestHelper
  end
end
