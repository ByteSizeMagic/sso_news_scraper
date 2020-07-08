class SsoNewsScraper::News
  attr_accessor :title, :updated, :lead, :more

  def self.all

  end
  
  def self.scrape_articles
    ## ./bin/sso_news_scraper
    doc = Nokogiri::HTML(open('https://www.starstable.com/news'))
    doc.css('.article').each do |article_title|
        @title = article_title.css('.article-text h2').text
        @updated = article_title.css('.article-text .updated').text.delete("\n")
        @lead = article_title.css('.article-text .lead').text.delete("\n")
        @more = "www.starstable.com/" + article_title.css("a").first["href"]
      binding.pry
    end
  end
end