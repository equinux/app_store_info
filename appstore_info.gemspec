lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'appstore_info/version'

Gem::Specification.new do |spec|
  spec.name          = 'eq_appstore_info'
  spec.version       = AppStoreInfo::VERSION
  spec.authors       = ['Ricardo Otero', 'Maximilian Szengel']
  spec.email         = ['oterosantos@gmail.com', 'szengel@equinux.com']

  spec.summary       = 'App Store parser'
  spec.description   = 'Get details about any app in the Apple App Store'
  spec.homepage      = 'https://github.com/equinux/appstore_info'
  spec.license       = 'MIT'

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }

  spec.add_dependency 'faraday', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'rubocop', '~> 0.49'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.3'
  spec.add_development_dependency 'vcr', '~> 6.0'
  spec.add_development_dependency 'webmock', '~> 3.9'
end
