require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

card_1 = Card.new("Lead actress in Pretty Woman?", "Julia Roberts", :Hollywood)
card_2 = Card.new("What is the 3rd planet?", "Earth", :STEM)
card_3 = Card.new("Lead actor from Pretty Woman?", "Richard Gere", :Hollywood)
card_4 = Card.new("What is the 1st planet?", "Mercury", :STEM)
card_5 = Card.new("What is the 2nd planet?", "Venus", :STEM)
deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
round = Round.new(deck)

play = round.start