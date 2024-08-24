require './lib/card'
require './lib/deck'
require 'pry'

RSpec.describe Deck do
    it 'exists' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        cards = [card_1, card_2]
        deck = Deck.new(cards)
    
        expect(deck).to be_instance_of(Deck)
    end

    it 'returns the "count" number of cards' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        cards = [card_1, card_2]
        deck = Deck.new(cards)
    
        expect(deck.count).to eq(2)
    end
       
    it 'the "count" number of cards is incorrect' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        cards = [card_1, card_2]
        deck = Deck.new(cards)
    
        expect(deck.count).not_to eq(3)
    end

    it 'pulls the correct category' do
        card_1 = Card.new("Lead actress in Pretty Woman?", "Julia Roberts", :Hollywood)
        card_2 = Card.new("What is the 3rd planet?", "Earth", :STEM)
        card_3 = Card.new("Lead actor from Pretty Woman?", "Richard Gere", :Hollywood)
        card_4 = Card.new("What is the first planet?", "Mercury", :STEM)
        card_5 = Card.new("What is the 2nd planet?", "Venus", :STEM)
        cards = [card_2, card_4, card_5]
        deck = Deck.new(cards)

        test_result = deck.cards_in_category(:STEM)

        expect(test_result.length).to eq(3)
    end
end
