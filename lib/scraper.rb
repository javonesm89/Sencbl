require "../environment.rb"

class Scraper
    @@dates = []

    def self.collect_dates
        url = 'https://www.dictionary.com/e/word-of-the-day/'
        html = Nokogiri::HTML(open(url)).css(".otd-item-headword")
        html.css(".otd-item-headword__date").each {|p| @@dates << p.text.strip}
    end
end