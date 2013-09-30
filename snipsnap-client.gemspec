# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "snipsnap-client"
  spec.version       = "0.0.1"
  spec.authors       = ["Sean Doyle"]
  spec.email         = ["sean@snipsnap.it"]
  spec.description   = %q{Snipsnap API client}
  spec.summary       = %q{Snipsnap API client}
  spec.homepage      = "https://github.com/snipsnap/snipsnap-client"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "fuubar"
  spec.add_development_dependency "should_not"
  spec.add_development_dependency "pry-rescue"
  spec.add_development_dependency "pry-stack_explorer"

  spec.add_development_dependency "simple_cov"
  spec.add_development_dependency "simplecov-gem-adapter"
end
