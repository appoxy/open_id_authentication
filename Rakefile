require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
    require 'jeweler'
    Jeweler::Tasks.new do |gemspec|
        gemspec.name = "openid_auth"
        gemspec.summary = "Simple way to add openid to rails apps."
        gemspec.email = "travis@appoxy.com"
        gemspec.homepage = "http://github.com/appoxy/open_id_authentication"
        gemspec.description = "Simple way to add openid to rails apps."
        gemspec.authors = ["Travis Reeder"]
        gemspec.files = FileList['lib/**/*.rb']
        gemspec.add_dependency 'ruby-openid'
    end
rescue LoadError
    puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the open_id_authentication plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the open_id_authentication plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'OpenIdAuthentication'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.markdown')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

