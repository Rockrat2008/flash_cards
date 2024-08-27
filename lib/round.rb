class Round
    attr_accessor :number_correct,
                  :number_correct_by_category,
                  :number_of_questions,
                  :deck

    def initialize(deck)
        @deck = deck
        @turns = []
        @current_card = deck.cards.first
        @number_correct = 0
        @number_correct_by_category = 0
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
        category_correct = 0
        @turns.count do |turn|
            if turn.correct? && turn.card.category == category
                category_correct += 1
            end
        end
        category_correct
    end

    def percent_correct
        (@number_correct/@turns.count * 100).round(1)
    end

    def percent_correct_by_category
        total_in_category = @turns.count do |turn|
            turns.card.category == category
        end
        correct_in_category = number_correct_by_category(category)
        (correct_in_category / total_in_category * 100).round(1)
    end
end