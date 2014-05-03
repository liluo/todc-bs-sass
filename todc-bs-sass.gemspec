# encoding: utf-8

require File.expand_path('../lib/todc-bs-sass/version', __FILE__)

Gem::Specification.new do |s|
  s.authors       = ['Liluo']
  s.email         = ['i@liluo.org']
  s.summary       = %q{Sass port of todc-bootstrap (Google-styled theme for Bootstrap).}
  s.description   = %q{Sass port of todc-bootstrap (Google-styled theme for Bootstrap).}
  s.homepage      = 'https://github.com/liluo/todc-bs-sass'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.name          = 'todc-bs-sass'
  s.require_paths = ['lib']
  s.version       = Todc::BS::Sass::VERSION

  s.add_runtime_dependency 'sass', '~> 3.2'
end
