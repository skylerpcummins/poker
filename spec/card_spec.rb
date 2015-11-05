require 'rspec'
require 'card.rb'

describe Card do

  it "initialize without errors" do
    card = Card.new(:ace, :spade)

    expect(card.face_value).to eq("ace")
    expect(card.suit).to eq(:spade)
    expect(card.bj_value).to eq(1)
  end

end
