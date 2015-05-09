require_relative 'lib/page_object_stubs/versiono'

Gem::Specification.new do |spec|
  spec.name    = 'page_object_stubs'
  spec.version = PageObjectStubs::VERSION
  spec.authors = ['bootstraponline']
  spec.email   = ['code@bootstraponline.com']

  spec.summary     = spec.description = 'PageObject stub generator for RubyMine'
  spec.description += '.' # avoid identical warning
  spec.homepage    = 'https://github.com/bootstraponline/page-object-stubs'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'parser', '~> 2.2.2.2'

  spec.add_development_dependency 'appium_thor', '~> 0.0.7'
  spec.add_development_dependency 'fakefs', '~> 0.6.7'
  spec.add_development_dependency 'rspec', '~> 3.2.0'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
end
