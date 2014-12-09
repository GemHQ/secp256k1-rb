# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secp256k1/version'

Gem::Specification.new do |spec|
  spec.name          = "secp256k1"
  spec.version       = Secp256k1::VERSION
  spec.authors       = ["Andy Alness", "Micah Winkelspecht"]
  spec.email         = ["hello@gem.co"]
  spec.description   = %q{A Ruby Gem wrapper for libsecp256k1 by Peter Wiulle}
  spec.summary       = %q{A Ruby Gem wrapper for libsecp256k1 by Peter Wiulle}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = ['lib/secp256k1.rb', 'lib/secp256k1/ffi.rb']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "ffi"
    
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~>2.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "pry"
end