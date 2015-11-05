require 'rspec'
require 'hand.rb'

describe "Hand" do
  # Mock this
  let(:card1) { double("card1") }
  let(:deck) { double("deck", draw_card: card1) }
  let(:hand) { Hand.new(deck) }

  describe "#initialize" do

    it "initializes with five cards" do
      expect(hand.cards.count).to eq(5)
    end
  end

  describe "#fill_hand" do

    it "fills hand with 5 cards" do
      hand.cards = []
      hand.fill_hand

      expect(hand.cards.count).to eq(5)
    end

  end

  describe "#discard" do

    it "refills hand after discarding" do
      hand.discard([0,2,4])

      expect(hand.cards.count).to eq(5)
    end

    # it "draws new cards" do
    #   old_hand = hand.cards.dup
    #   new_hand = hand.discard([0,1,2])
    #
    #   expect(hand.cards).to_not eq(old_hand)
    # end

  end

end
