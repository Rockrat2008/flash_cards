require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Round do
    it 'exists' do
        card_1 = Card.new("Lead actress in Pretty Woman?", "Julia Roberts", :Hollywood)
        card_2 = Card.new("What is the 3rd planet?", "Earth", :STEM)
        card_3 = Card.new("Lead actor from Pretty Woman?", "Richard Gere", :Hollywood)
        card_4 = Card.new("What is the first planet?", "Mercury", :STEM)
        card_5 = Card.new("What is the 2nd planet?", "Venus", :STEM)
        cards = [card_1, card_2, card_3, card_4, card_5]
        deck = Deck.new(cards)
        round = Round.new(deck)

        expect(round).to be_instance_of Round
    end

    it 'turns is an array' do
        card_1 = Card.new("Lead actress in Pretty Woman?", "Julia Roberts", :Hollywood)
        card_2 = Card.new("What is the 3rd planet?", "Earth", :STEM)
        card_3 = Card.new("Lead actor from Pretty Woman?", "Richard Gere", :Hollywood)
        card_4 = Card.new("What is the first planet?", "Mercury", :STEM)
        card_5 = Card.new("What is the 2nd planet?", "Venus", :STEM)
        cards = [card_1, card_2, card_3, card_4, card_5]
        deck = Deck.new(cards)
        round = Round.new(deck)

        expect(round.turns).to be_empty
    end

    it 'shows the current card' do
        card_1 = Card.new("Lead actress in Pretty Woman?", "Julia Roberts", :Hollywood)
        card_2 = Card.new("What is the 3rd planet?", "Earth", :STEM)
        card_3 = Card.new("Lead actor from Pretty Woman?", "Richard Gere", :Hollywood)
        card_4 = Card.new("What is the first planet?", "Mercury", :STEM)
        card_5 = Card.new("What is the 2nd planet?", "Venus", :STEM)
        cards = [card_1, card_2, card_3, card_4, card_5]
        deck = Deck.new(cards)
        round = Round.new(deck)

        expect(round.current_card).to eq(deck.cards[0])
    end
end