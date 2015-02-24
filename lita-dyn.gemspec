Gem::Specification.new do |spec|
  spec.name          = "lita-dyn"
  spec.version       = "0.0.2"
  spec.authors       = ["Ben Haan"]
  spec.email         = ["benhaan@gmail.com"]
  spec.description   = 'A Lita handler to interact with Dyn'
  spec.summary       = 'A Lita handler to interact with Dyn'
  spec.homepage      = "http://github.com/benhaan/lita-dyn"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.2"
  spec.add_runtime_dependency "dyn-rb", "~> 1.0"
  spec.add_runtime_dependency "domain_name", "0.5.23"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
