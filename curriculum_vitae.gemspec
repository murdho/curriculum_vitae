# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'curriculum_vitae/version'

Gem::Specification.new do |spec|
  spec.name          = 'curriculum_vitae'
  spec.version       = CurriculumVitae::VERSION
  spec.authors       = ['Murdho']
  spec.email         = ['murdho@murdho.com']

  spec.summary       = 'Simple DSL for creating CV'
  spec.description   = ''
  spec.homepage      = 'https://github.com/murdho/curriculum_vitae'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
