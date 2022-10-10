require_relative "lib/yae/version"

Gem::Specification.new do |spec|
  spec.name = "yae"
  spec.version = Yae::VERSION
  spec.authors = ["Stephen Ierodiaconou"]
  spec.email = ["stevegeek@gmail.com"]

  spec.summary = "yae (Yet Another Enum) provides a simple enum class (enumerated type) implementation, Yae::Enum"
  spec.description = "yae provides a simple enum class (enumerated type) implementation (Yae::Enum) that can be used " \
                       "to abstract a set of values. It also provides methods to check values existence in the enum " \
                       "and to iterate over its contents."
  spec.homepage = "https://github.com/stevegeek/yae"
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
