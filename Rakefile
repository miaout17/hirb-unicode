require 'bundler'
Bundler.setup
Bundler::GemHelper.install_tasks

namespace :test do
  desc 'Run tests of hirb gem with hirb-unicode'
  task :hirb do |t|
    gem 'hirb' # Load hirb specified in gemfile
    hirb_gem_path = Gem.loaded_specs["hirb"].full_gem_path
    test_path = File.expand_path(File.join(hirb_gem_path, 'test', '*_test.rb'))
    sh "bundle exec bacon -q hirb-unicode.rb #{test_path}"
  end

  desc 'Run tests of hirb-unicode gem'
  task :unicode do |t|
    sh 'bundle exec bacon -I. -q test/*_test.rb'
  end

end

desc 'Run all tests'
task :test => ["test:hirb", "test:unicode"]

task :default => :test

