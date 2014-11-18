class Question
    include Comparable
    attr_reader :ask,:difficulty
    def initialize(ask,difficulty=0)
        @ask,@difficulty = ask,difficulty
    end 
    def <=> (other)
       return nil unless other.is_a?Question
       @difficulty <=> other.difficulty
    end
    
    def == (other)
        return nil unless other.is_a?Question
        iguales = false
        if (self.difficulty == other.difficulty)  && (self.ask == other.ask)
            iguales = true
        end
        iguales
    end
    
end