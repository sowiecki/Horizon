# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :db do
  desc 'Load seed data from db/seeds.rb'
  task :seed => :environment do
    seed_files = ['social_justice_seeds.rb', 'health_seeds.rb', 'education_seeds.rb', 'business_seeds.rb', 'foreign_policy_seeds.rb', 'politics_seeds.rb', 'science_seeds.rb', 'sports_seeds.rb', 'technology_seeds.rb']
    seed_files.each do |file|
      seed_file = File.join(Rails.root,'db/seeds', file)
      load(seed_file) if File.exist?(seed_file)
    end
  end
  # task :followees => :environment do
  #   seed_files = ['followers.rb']
  #   seed_files.each do |file|
  #     seed_file = File.join(Rails.root,'db/seeds', file)
  #     load(seed_file) if File.exist?(seed_file)
  #   end
  # end
end


