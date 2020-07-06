require_relative 'lib/sso_news_scraper/version'

Gem::Specification.new do |spec|
  spec.name          = "sso_news_scraper"
  spec.version       = SsoNewsScraper::VERSION
  spec.authors       = ["ByteSizeMagic"]
  spec.email         = ["bytesizemagic@gmail.com"]

  spec.summary       = %q{CLI for displaying news updates for Star Stable Online.}
  spec.description   = %q{Scrapes the Star Stable Online news page for updates and allows reader to choose an udate to read.}
  spec.homepage      = "https://github.com/ByteSizeMagic/sso_news_scraper"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ByteSizeMagic/sso_news_scraper.git"
  spec.metadata["changelog_uri"] = "https://github.com/ByteSizeMagic/sso_news_scraper/blob/master/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["sso_news_scraper"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_development_dependency "gem-release"
  spec.add_development_dependency "nokogiri"

end
