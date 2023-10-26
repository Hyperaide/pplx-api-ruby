# frozen_string_literal: true

require_relative "lib/pplx_api/version"

Gem::Specification.new do |spec|
  spec.name = "pplx-api-ruby"
  spec.version = PplxApi::VERSION
  spec.authors = ["John Paul"]
  spec.email = ["johnarpaul@gmail.com"]

  spec.summary = "API wrapper for pplx-api."
  spec.description = "One of the fastest ways to access Mistral 7B, Llama2 13B, Code Llama 34B, Llama2 70B, replit-code-v1.5-3b models."
  spec.homepage = "https://github.com/Hyperaide/pplx-api-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Hyperaide/pplx-api-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/Hyperaide/pplx-api-ruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = ["lib/pplx_api.rb"]
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_dependency 'json'
end
