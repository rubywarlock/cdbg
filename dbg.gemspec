# Maintain your gem's version:
require_relative "lib/dbg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name          = "Dbg"
  spec.version       = Version::VERSION
  spec.authors       = ["Vitaly Simakov"]
  spec.email         = ["vs.rubywarlock@gmail.com"]

  spec.summary       = %q{Colorized debugging and logong}
  spec.description   = %q{Colorized debugging and logong}
  spec.homepage      = "https://github.com/rubywarlock/colorized-debugger"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.5")

  spec.metadata["allowed_push_host"] = "https://github.com/rubywarlock/colorized-debugger"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rubywarlock/colorized-debugger"
  spec.metadata["changelog_uri"] = "https://github.com/rubywarlock/colorized-debugger/CHANGELOG.md"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rainbow'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rainbow'
end