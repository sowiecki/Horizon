# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :db do
  desc 'Load seed data from db/seeds.rb'
  task :seed => :environment do
    seed_file = File.join(Rails.root,'db/seeds', 'politics_seeds.rb')
    load(seed_file) if File.exist?(seed_file)
  end
end


