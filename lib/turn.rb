class Turn

    attr_reader :guess,
                :card

    def initialize(guess, card)
        @guess = guess.downcase
        @card = card
    end

    def correct?
        @guess == @card.answer.downcase
    end

    def feedback
        correct? ? "Correct!" : "Incorrect. The correct answer is #{@card.answer}."
    end

end
