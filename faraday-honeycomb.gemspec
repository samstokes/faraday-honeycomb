lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH << lib unless $LOAD_PATH.include?(lib)
require 'faraday/honeycomb/version'

Gem::Specification.new do |gem|
  gem.name = Faraday::Honeycomb::GEM_NAME
  gem.version = Faraday::Honeycomb::VERSION

  gem.summary = 'Instrument your Faraday HTTP requests with Honeycomb'
  gem.description = <<-DESC
    TO DO *is* a description
  DESC

  gem.authors = ['Sam Stokes']
  gem.email = %w(sam@honeycomb.io)
  gem.homepage = 'https://github.com/honeycombio/faraday-honeycomb'
  gem.license = 'MIT'


  gem.add_dependency 'libhoney', '>= 1.5.0'
  gem.add_dependency 'faraday', '>= 0.8.0'

  gem.add_development_dependency 'bump'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'yard'

  gem.files = Dir[*%w(
      lib/**/*
      README*)] & %x{git ls-files -z}.split("\0")
end
