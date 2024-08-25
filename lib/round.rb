class Round
    attr_accessor :guesses_correct,
                  :guesses_incorrect,
                  :number_of_questions

    def initialize(deck)
        @deck = deck
        @turns = []
        @current_card = deck.cards.first
        @player_guess
    end

    def turns
        @turns
    end

    def current_card
        @deck.cards[0]
    end

    def take_turn(player_guess)
        new_turn = Turn.new(player_guess, current_card)
        require 'pry'; binding.pry
        new_turn
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