require_relative 'deck.rb'

class Hand

  attr_reader :deck
  attr_accessor :cards
  def initialize(deck)
    @deck = deck
    @cards = []
    fill_hand
  end

  def fill_hand
    until filled?
      cards << deck.draw_card
    end
  end

  def filled?
    cards.count == 5
  end

  def discard(positions)
    positions.each do |i|
      cards.delete_at(i)
    end

    fill_hand
  end
  
end
