require "../Sencbl/environment.rb"

class Word
    attr_reader :word, :word_class, :define, :origin_prefix, :origin, :examples_prefix, :examples, :chosen_date, :pronunciation

    @@words = []

    def initialize(word_hash)
        @chosen_date = word_hash[:chosen_date]
        @word = word_hash[:word]
        @word_class = word_hash[:word_class]
        @define = word_hash[:define]
        @origin_prefix = word_hash[:origin_prefix]
        @origin = word_hash[:origin]
        @examples_prefix = word_hash[:examples_prefix]
        @examples = word_hash[:examples]
        @pronunciation = word_hash[:pronunciation]
        save
    end

    def save 
        @@words << self
    end

    def display_info
        puts "For #{@chosen_date}, the word is: 
        #{@word}, which is a/an #{@word_class}!\n"
        puts "Pronunciation:
        #{@pronunciation}\n"
        puts "Definition:
        #{@define}\n"
        sleep(5)
        puts "Think of some ways YOU can use #{@word} in every day situations!"
    end

    
end