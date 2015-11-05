require_relative 'card.rb'

class Deck

  attr_accessor :deck

  def initialize
    @deck = []
    populate
  end

  def populate
    Card.suits.each do |suit|
      Card.face_values.each_key do |value|
        deck << Card.new(value, suit)
      end
    end
    shuffle
  end

  def count
    @deck.count
  end

  def shuffle
    @deck.shuffle
  end

  def draw_card
    @deck.shift
  end

  def include?(card)
    @deck.include?(card)
  end

end
