require "pry"
require "nokogiri"
require "open-uri"
require_relative "./sso_news_scraper/version"
require_relative "./sso_news_scraper/cli"
require_relative "./sso_news_scraper/news"


module SsoNewsScraper
  class Error < StandardError; end
  # Your code goes here...
end