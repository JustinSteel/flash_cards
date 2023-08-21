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
        @card == @string
    end
    def feedback
        if @card == @string
            "Correct!"
        else 
            "Incorrect"
        end
    end
end