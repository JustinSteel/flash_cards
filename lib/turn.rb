class Turn
    attr_reader :string, :card
    def initialize(string, card)
        @string = string
        @card = card
    end
    def guess
        @guess
    end
    def correct?
        if @guess == @string
        true
        else false
        end
    end
    def feedback
        if @guess == @string
            "Correct!"
        else "Incorrect"
        end
    end
end