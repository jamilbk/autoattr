require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/autoattr_test.rb']
end

desc "Run tests"
task :default => :test
