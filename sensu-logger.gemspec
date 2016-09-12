# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "sensu-logger"
  spec.version       = "1.2.1"
  spec.authors       = ["Sean Porter"]
  spec.email         = ["portertech@gmail.com"]
  spec.summary       = "The Sensu logger library"
  spec.description   = "The Sensu logger library"
  spec.homepage      = "https://github.com/sensu/sensu-logger"
  spec.license       = "MIT"

  spec.files         = Dir.glob("lib/**/*") + %w[sensu-logger.gemspec README.md LICENSE.md]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("sensu-json")
  spec.add_dependency("eventmachine")

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "codeclimate-test-reporter"
end
