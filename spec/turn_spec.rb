require './lib/turn'
require './lib/card'

RSpec.describe Turn do
    it 'exists' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
    
        expect(turn).to be_instance_of(Turn)
    end

    it 'has a card' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
    
        expect(turn.card).to be_instance_of(Card)
    end

    it 'has a guess' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
    
        expect(turn.guess).to eq("Juneau")
    end

    it 'has a correct guess' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
    
        expect(turn.correct?).to eq(true)
    end

    it 'has a wrong guess' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Orlando", card)
    
        expect(turn.correct?).to eq(false)
    end
end