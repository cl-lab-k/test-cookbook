# https://github.com/mlafeldt/ps2dev-cookbook/blob/master/Rakefile

TARGET='test-cookbook'

task :prepare do
  sh 'berks',  'install', '--path', 'cookbooks'
  at_exit { Rake::Task[ :clean ].invoke if $!.nil? }
end

task :clean do
  rm_rf 'cookbooks'
  rm_rf 'vendor'
end

desc 'run knife test'
task :knife => :prepare do
  sh 'knife', 'cookbook', 'test', TARGET,
     '--config',        '.knife.rb',
     '--cookbook-path', 'cookbooks'
end

desc 'run foodcritic'
task :foodcritic => :prepare do
  sh 'foodcritic', File.join( 'cookbooks', TARGET )
end

desc 'run chefspec'
task :chefspec => :prepare do
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new( :chefspec ) do |t|
    t.pattern = File.join( 'cookbooks', TARGET, 'spec', '*_spec.rb' )
    t.rspec_opts = ['-c']
  end
end

task :test => [ :knife, :foodcritic, :chefspec ]
task :default => :test
