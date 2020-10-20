require_relative "lib/enum_class_rb/version"

Gem::Specification.new do |spec|
  spec.name          = "enum_class_rb"
  spec.version       = EnumClass::VERSION
  spec.authors       = ["Stephen Ierodiaconou"]
  spec.email         = ["stevegeek@gmail.com"]

  spec.summary       = "enum_class_rb provides a simple Enum class (enumerated type) implementation called EnumClass"
  spec.description   = "enum_class_rb provides a simple Enum class (enumerated type) implementation that an be used " \
                       "to abstract a set of values. EnumClass provides methods to check values existance in the enum" \
                       " and to iterate over its contents."
  spec.homepage      = "https://github.com/stevegeek/enum_class_rb"
  spec.license       = "MIT"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir["{lib}/**/*", "LICENSE.txt", "Rakefile", "README.md", "sig/types.rbs"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "steep"
end
