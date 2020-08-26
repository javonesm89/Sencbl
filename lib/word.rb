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
end