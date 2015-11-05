require 'rspec'
require 'deck.rb'

describe "Deck" do

  let(:deck) { Deck.new }

  it "initialize with 52 cards" do
    expect(deck.count).to eq(52)
  end

  describe "#shuffle" do

    # Test that deck is actually in a new order
    it "shuffles the deck" do
      expect(deck.deck).to receive(:shuffle)
      deck.shuffle
    end

  end

  describe "#draw_card" do
    it "returns a card" do
      expect(deck.draw_card).to be_a(Card)
    end

    it "removes card from deck" do
      expect(deck.include?(deck.draw_card)).to be false
    end

  end

end
