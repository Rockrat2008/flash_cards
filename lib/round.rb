class Round
    attr_accessor :number_correct,
                  :number_correct_by_category,
                  :number_of_questions,
                  :deck
                  :card_number
                  :answer

    def initialize(deck)
        @deck = deck
        @turns = []
        @current_card = deck.cards.first
        @number_correct = 0
        @number_correct_by_category = 0
        @card_number = 1
        @answer
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
        (@number_correct.to_f/@turns.count * 100).round(1)
    end

    def percent_correct_by_category
        total_in_category = @turns.count do |turn|
            @turns.card.category == category
        end
        correct_in_category = number_correct_by_category(category)
        (correct_in_category.to_f / total_in_category * 100).round(1)
    end

    def start
        puts "Please enter your name:"
        player_name = gets.chomp
        puts "Welcome #{player_name}! You are playing with #{deck.count} cards."
        puts "----------------------------------------------"

        deck.cards.each_with_index do |card, index|
            puts "This is card #{index + 1} out of #{deck.cards.count}."
        puts "Question: #{card.question}."
        puts "Answer?"
        answer = gets.chomp
        new_turn = take_turn(answer)
        puts "That is #{new_turn.feedback.upcase}!"
        end

        puts "******  Game Over!  ******"
        puts "You had #{@number_correct} correct guesses out of #{@turns.count} for a total score of #{percent_correct}%."
        by_category = deck.cards.map(&:category).uniq
        by_category.each do |category|
            puts "#{category} - You got #{number_correct_by_category(category)} for % correct"
        end
        require 'pry'; binding.pry
    end
end