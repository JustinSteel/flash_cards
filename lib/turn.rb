class Turn
    attr_reader :string, :card
    def initialize(string, card)
        @string = string
        @card = card
    end
    def guess
        @string
    end
    def correct?
        @string == @string
    end
    def feedback
        if @string == @string
            "Correct!"
        else 
            "Incorrect"
        end
    end
end