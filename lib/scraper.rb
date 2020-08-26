require "../Sencbl/environment.rb"

class Scraper
    @@dates = []

    def self.collect_dates
        url = 'https://www.dictionary.com/e/word-of-the-day/'
        html = Nokogiri::HTML(open(url)).css(".otd-item-headword")
        html.css(".otd-item-headword__date").each {|p| @@dates << p.text.strip}
    end

    def self.collect_word_object(chosen_date)
        word_hash = {}
        url = 'https://www.dictionary.com/e/word-of-the-day/'
        html = Nokogiri::HTML(open(url))
        html.css(".otd-item-wrapper-content").each do |p|
            date = p.css(".otd-item-headword__date").text.strip
        end
    end
end
