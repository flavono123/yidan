require 'rake/testtask'

namespace :test do
  desc 'Prepare enviroments for testing'
  task :setup do
    sh('RAILS_ENV=test rake db:drop db:create db:schema:load')
  end
end

desc 'Run all tests'
Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_test.rb'
  t.verbose = true
end
