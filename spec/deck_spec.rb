require './lib/deck'
require './lib/turn'
require './lib/card'

RSpec.describe Deck do
    it 'exists' do
        deck = Deck.new("cards")
        
        expect(deck).to be_instance_of(Deck)
    end
    it 'makes array of cards' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs 
        and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° 
        clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        
        expect(cards).to eq([card_1, card_2, card_3])
    end
    it 'Adds cards to deck' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs 
        and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° 
        clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)

        expect(deck.cards).to eq([card_1, card_2, card_3])
    end
    
    it 'counts cards in deck' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs 
        and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° 
        clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)

        expect(deck.cards.count).to eq(3)
    end
    it 'calls cards in same category' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs 
        and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° 
        clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)

        expect(deck.cards_in_category(:STEM)).to contain_exactly(card_2, card_3)
    end
    it 'calls cards in same category' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs 
        and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° 
        clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)

        expect(deck.cards_in_category("Pop Culture")).to eq([])
    end
end
