require "../Sencbl/environment.rb"

class Scraper
    @@dates = []

    def self.collect_dates
        url = 'https://www.dictionary.com/e/word-of-the-day/'
        html = Nokogiri::HTML(URI.open(url)).css(".otd-item-headword")
        html.css(".otd-item-headword__date").each {|p| @@dates << p.text.strip}
    end

    def self.collect_word_object(chosen_date)
        word_hash = {}
        url = 'https://www.dictionary.com/e/word-of-the-day/'
        html = Nokogiri::HTML(URI.open(url))
        html.css(".otd-item-wrapper-content").each do |p|
            date = p.css(".otd-item-headword__date").text.strip
            if date == chosen_date
                word_hash[:chosen_date] = p.css(".otd-item-headword__date").text.strip
                word_hash[:word] = p.css(".otd-item-headword__word").text.strip
                word_hash[:word_class] = p.css("span.luna-pos").text.strip
                word_hash[:define] = p.css(".otd-item-headword__pos p")[1].text.strip
                word_hash[:origin_prefix] = p.css(".wotd-item-origin__content h2").text.strip
                word_hash[:origin] = p.css(".wotd-item-origin__content p").text.strip
                word_hash[:examples_prefix] = p.css(".wotd-item-examples__title").text.strip
                word_hash[:examples] = p.css(".wotd-item-example__content p").text.strip
                word_hash[:pronunciation] = p.css(".otd-item-headword__pronunciation").text.strip
            end
        end
        word_hash
    end

     def self.all
            @@dates
        end

end
