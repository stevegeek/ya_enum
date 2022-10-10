require_relative "lib/ya_enum/version"

Gem::Specification.new do |spec|
  spec.name = "ya_enum"
  spec.version = YaEnum::VERSION
  spec.authors = ["Stephen Ierodiaconou"]
  spec.email = ["stevegeek@gmail.com"]

  spec.summary = "ya_enum (Yet Another Enum) provides a simple enum class (enumerated type) implementation, YaEnum::Enum"
  spec.description = "ya_enum provides a simple enum class (enumerated type) implementation (YaEnum::Enum) that can be used " \
                       "to abstract a set of values. It also provides methods to check values existence in the enum" \
                       " and to iterate over its contents."
  spec.homepage = "https://github.com/stevegeek/ya_enum"
  spec.license = "MIT"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["{lib}/**/*", "LICENSE.txt", "Rakefile", "README.md", "sig/types.rbs"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "standard"
  spec.add_development_dependency "steep"
end
