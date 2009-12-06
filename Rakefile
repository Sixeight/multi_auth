# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

require 'tasks/rails'


PKG_FILES = FileList[
                     'app/**/*.{rb,erb}',
                     'config/*',
                     'db/*',
                     'lib/**/*.rb',
                     'public/*',
                     'rails/init.rb',
                     'test/**/*.rb'
                    ]
spec = Gem::Specification.new do |s|
  s.name = 'multi_auth'
  s.version = '0.0.1'
  s.author = 'okkez'
  s.email = 'okkez000@gmail.com'
  s.homepage = 'https://github.com/okkez/multi_auth'
  s.platform = Gem::Platform::RUBY
  s.summary = "xxx"
  s.files = PKG_FILES.to_a
  s.require_path = 'lib'
  s.has_rdoc = false
  s.extra_rdoc_files = ['README']
end

desc 'Turn this plugin into a gem.'
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end
