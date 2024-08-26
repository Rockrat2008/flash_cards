class Round
    attr_accessor :guesses_correct,
                  :guesses_incorrect,
                  :number_of_questions,
                  :deck

    def initialize(deck)
        @deck = deck
        @turns = []
        @current_card = deck.cards.first
        @number_correct = 0
    end

    def turns
        @turns
    end

    def current_card
        @current_card = @deck.cards[@turns.count]
    end

    def take_turn(player_guess)
        new_turn = Turn.new(player_guess, current_card)
        @turns << new_turn
        @number_correct += 1 if new_turn.correct?
        new_turn.feedback
        new_turn
    end

    def number_correct
        @number_correct
    end

    def number_correct_by_category(category)

    end

    def percent_correct
        (@number_correct/@turns.count * 100).round(1)
    end

    def percent_correct_by_category

    end
end