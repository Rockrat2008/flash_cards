class Round
    attr_accessor :guesses_correct,
                  :guesses_incorrect,
                  :number_of_questions

    def initialize(deck)
        @deck = deck
        @turns = []
    end

    def turns
        @turns
    end

    def current_card
        @deck.cards[0]
    end

    def take_turn

    end

    def number_correct
        guesses_correct = number_of_questions - guesses_incorrect
    end

    def number_correct_by_category(category)

    end

    def percent_correct

    end

    def percent_correct_by_category

    end
end