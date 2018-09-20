# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "bento/version"
require "English"

Gem::Specification.new do |gem|
  gem.name          = "bento-lpn"
  gem.version       = Bento::VERSION
  gem.license       = "Apache-2.0"
  gem.authors       = ["Stephan Linz"]
  gem.email         = ["linz@li-pro.net"]
  gem.description   = "bento-lpn (fork of bento-ya) builds bento boxes"
  gem.summary       = "A RubyGem for managing chef/bento builds"
  gem.homepage      = "https://github.com/rexut/bento-lpn"

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.bindir        = "bin"
  gem.executables   = %w{bento}
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.3.1"

  gem.add_dependency "mixlib-shellout", ">= 2.3.2"
  gem.add_dependency "vagrant_cloud", "~> 1.0"
end
