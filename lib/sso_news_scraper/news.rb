class SsoNewsScraper::News
  attr_accessor :title, :updated, :lead, :more

  def initialize(title:, updated:, lead:, more:)
    @title, @updated, @lead, @more = title, updated, lead, more
  end

  def self.all
    binding.pry
    @@all ||= self.scrape_articles.collect do |article_hash|
      self.new(article_hash)
    end
  end

  # 1:06 of gem publish video to scrape only for articles requested
  def read_more
    @read_more ||= self.scrape_read_more
  end
  
  def self.scrape_articles
    ## ./bin/sso_news_scraper
    doc = Nokogiri::HTML(URI.open('https://www.starstable.com/news'))
    doc.css('.article').collect do |article_title|
      {
        title: article_title.css('.article-text h2').text,
        updated: article_title.css('.article-text .updated').text.delete("\n"),
        lead: article_title.css('.article-text .lead').text.delete("\n"),
        more: "www.starstable.com/" + article_title.css("a").first["href"]
      }
    end
  end
end