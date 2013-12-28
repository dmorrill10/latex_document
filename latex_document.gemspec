# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'latex_document/version'

Gem::Specification.new do |spec|
  spec.name          = "latex_document"
  spec.version       = LatexDocument::VERSION
  spec.authors       = ["Dustin Morrill"]
  spec.email         = ["morrill@ualberta.ca"]
  spec.description   = %q{Latex document generator}
  spec.summary       = %q{Latex document generator}
  spec.homepage      = "https://github.com/dmorrill10/latex_document"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor', '~> 0.18.1'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
