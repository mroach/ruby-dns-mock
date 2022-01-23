# frozen_string_literal: true

lib = ::File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dns_mock/version'

Gem::Specification.new do |spec|
  spec.name          = 'dns_mock'
  spec.version       = DnsMock::VERSION
  spec.authors       = ['Vladislav Trotsenko']
  spec.email         = ['admin@bestweb.com.ua']

  spec.summary       = %(dns_mock)
  spec.description   = %(💎 Ruby DNS mock. Mimic any DNS records for your test environment and even more.)

  spec.homepage      = 'https://github.com/mocktools/ruby-dns-mock'
  spec.license       = 'MIT'

  spec.metadata = {
    'homepage_uri' => 'https://github.com/mocktools/ruby-dns-mock',
    'changelog_uri' => 'https://github.com/mocktools/ruby-dns-mock/blob/master/CHANGELOG.md',
    'source_code_uri' => 'https://github.com/mocktools/ruby-dns-mock',
    'documentation_uri' => 'https://github.com/mocktools/ruby-dns-mock/blob/master/README.md',
    'bug_tracker_uri' => 'https://github.com/mocktools/ruby-dns-mock/issues'
  }

  spec.required_ruby_version = '>= 2.5.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| ::File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'simpleidn', '~> 0.2.1'

  spec.add_development_dependency 'bundler-audit', '~> 0.9.0.1'
  spec.add_development_dependency 'fasterer', '~> 0.9.0'
  spec.add_development_dependency 'ffaker', '~> 2.20'
  spec.add_development_dependency 'net-ftp', '~> 0.1.3'
  spec.add_development_dependency 'overcommit', '~> 0.58.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.9'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  spec.add_development_dependency 'reek', '~> 6.1'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rspec-dns', '~> 0.1.8'
  spec.add_development_dependency 'rubocop', '~> 1.25'
  spec.add_development_dependency 'rubocop-performance', '~> 1.13', '>= 1.13.2'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.7'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
end
