class Deck
    # attr_reader :@deck

    def initialize(cards)
        @deck = cards
        @category_cards = []
    end

    def cards
        @deck
    end

    def count
        @deck.count
    end

    def cards_in_category(category)
        @deck.select do |card|
            card.category == category
        end
    end
end