ENV['RAILS_ENV'] = 'test'
require 'minitest/autorun'
require_relative '../config/environment'
require 'database_cleaner'
require_relative './sample_record_helper'

include SampleRecordHelper

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

DatabaseCleaner.strategy = :transaction

class ActiveSupport::TestCase
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end
