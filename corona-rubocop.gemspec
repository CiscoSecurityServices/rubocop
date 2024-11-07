# frozen_string_literal: true

require_relative 'lib/corona/rubocop/version'

Gem::Specification.new do |spec|
  spec.name          = 'corona-rubocop'
  spec.version       = Corona::Rubocop::VERSION
  spec.authors       = ['Jonathon Gardner']
  spec.email         = ['jonathag@cisco.com']

  spec.summary       = 'Common Rubocop Files'
  spec.description   = 'Common Rubocop Files'
  spec.homepage      = 'https://github.cisco.com/CiscoSecurityServices/rubocop'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.1.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.cisco.com/CiscoSecurityServices/rubocop'
  spec.metadata['changelog_uri'] = 'https://github.com/CiscoSecurityServices/rubocop/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(/^(test|spec|features)\//) }
  end
  spec.require_paths = ['lib']
end
