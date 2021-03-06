require 'rake/testtask'

desc "Default: Run all the unit tests"
task :default => [ 'test:units' ]

namespace :test do
  desc 'Run all unit tests.'
  Rake::TestTask.new(:units) do |t|
    t.libs << "test"
  	t.pattern = 'test/unit/**/*_test.rb'
    t.verbose = true
  end

  desc 'Run all unit tests.'
  Rake::TestTask.new(:mapping) do |t|
    t.libs << "test"
  	t.pattern = 'test/mapping/**/*_test.rb'
    t.verbose = true
  end
end

desc "Run both test suits"
task :test => ['test:units', 'test:mapping']
