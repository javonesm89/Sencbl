require "../Sencbl/environment.rb"

class CLI
    attr_accessor  :word_hash, :has_name
    
    @@prompt = TTY::Prompt.new

    def run
        if !@has_name 
             greet
             @has_name = true
        end
        Scraper.collect_dates
        @date_options = Scraper.all
        @chosen_date = @@prompt.select("#{@name}, choose a date for Word of the Day!", @date_options)
        scrape_and_make_word_object(@chosen_date)
        display
        start_over
    end
end