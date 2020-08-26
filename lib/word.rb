require "../Sencbl/environment.rb"

class Word
    attr_reader :word, :word_class, :define, :origin_prefix, :origin, :examples_prefix, :examples, :chosen_date, :pronunciation

    @@words = []
end