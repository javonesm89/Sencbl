require "../Sencbl/environment.rb"

class CLI
    attr_accessor  :word_hash, :has_name
    
    @@prompt = TTY::Prompt.new
end