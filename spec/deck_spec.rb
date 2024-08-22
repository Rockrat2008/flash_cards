require './lib/card'
require './lib/deck'

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
end
