# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paperclip/eitheror/version'

Gem::Specification.new do |spec|
  spec.name          = "paperclip-eitheror"
  spec.version       = Paperclip::Eitheror::VERSION
  spec.authors       = ["Matheus Abegg"]
  spec.email         = ["matheus.abegg@gmail.com"]

  spec.summary       = "Storage for Paperclip which will fallback in case of" \
    " a file not existing on the primary storage."
  spec.homepage      = "https://github.com/powerhome/paperclip-eitheror"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "paperclip", "~> 4.2"

  spec.add_development_dependency "activerecord", "= 3.2.22.5"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug"
end
